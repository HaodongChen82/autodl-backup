#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./s7k_to_cereal.sh \
#     -s /home/chd/uwslam_clean/WCD_M30_2020720_M100_Start.s7k \
#     -n /home/chd/uwslam_clean/NorbitNav.csv \
#     -o /home/chd/uwslam_clean/mbes_ping.cereal \
#     [-p 256]
#
# Notes:
# - /home/chd/MBES-lib/build/bin/georeference and /home/chd/MBES-lib/build/bin/cereal_from_llh


S7K=""
CSV=""
OUT=""
PING_SIZE=256

while getopts "s:n:o:p:" opt; do
  case $opt in
    s) S7K="$OPTARG" ;;
    n) CSV="$OPTARG" ;;
    o) OUT="$OPTARG" ;;
    p) PING_SIZE="$OPTARG" ;;
    *) echo "invalid arg"; exit 1 ;;
  esac
done

if [[ -z "${S7K}" || -z "${CSV}" || -z "${OUT}" ]]; then
  echo "Usage: $0 -s <file.s7k> -n <NorbitNav.csv> -o <mbes_ping.cereal> [-p <ping_size>]"
  exit 1
fi

# Paths to tools
GEOR="/home/chd/MBES-lib/build/bin/georeference"
C2LLH="/home/chd/MBES-lib/build/bin/cereal_from_llh"
PY_SBET="/home/chd/MBES-lib/convert_csv_to_sbet.py"

if [[ ! -x "$GEOR" ]]; then
  echo "ERROR: georeference not found at $GEOR"; exit 2
fi
if [[ ! -x "$C2LLH" ]]; then
  echo "ERROR: cereal_from_llh not found at $C2LLH"; exit 2
fi

# Create SBET converter if missing
if [[ ! -f "$PY_SBET" ]]; then
  cat > "$PY_SBET" << 'PY'
#!/usr/bin/env python3
import csv, sys, math, struct, datetime
def unix_to_gps_sow(ts):
    gps_epoch = datetime.datetime(1980,1,6,tzinfo=datetime.timezone.utc).timestamp()
    sow = ts - gps_epoch
    week = int(sow // 604800)
    return sow - week*604800
def to_rad(d): return d*math.pi/180.0
def fget(r,k):
    v=r.get(k,"")
    try:
        x=float(v)
        if not math.isfinite(x): return None
        return x
    except: return None
if len(sys.argv)<3:
    print("usage: convert_csv_to_sbet.py NorbitNav.csv out.sbet"); sys.exit(1)
inp,outp=sys.argv[1],sys.argv[2]
cnt=0
with open(inp, newline='') as f, open(outp, "wb") as g:
    rdr=csv.DictReader(f)
    # DateTime,FishLat,FishLon,FishPitch,FishRoll,FishHeading,FishDepth,FishSpeedofSound
    for r in rdr:
        ts=fget(r,"DateTime")
        lat=fget(r,"FishLat"); lon=fget(r,"FishLon")
        if ts is None or lat is None or lon is None: continue
        sow=unix_to_gps_sow(ts)
        roll=to_rad(fget(r,"FishRoll") or 0.0)
        pitch=to_rad(fget(r,"FishPitch") or 0.0)
        head=to_rad(fget(r,"FishHeading") or 0.0)
        rec=(sow,to_rad(lat),to_rad(lon),0.0, 0.0,0.0,0.0, roll,pitch,head, 0.0,0.0,0.0, 0.0,0.0,0.0,0.0)
        g.write(struct.pack("<17d", *rec)); cnt+=1
print(f"Wrote {cnt} SBET records to {outp}")
PY
  chmod +x "$PY_SBET"
fi

# Workspace
DIR="$(cd "$(dirname "$S7K")" && pwd)"
SBET="$DIR/out.sbet"
XYZ="$DIR/points_llh.xyz"

echo "[1/3] Converting CSV -> SBET..."
"$PY_SBET" "$CSV" "$SBET"

echo "[2/3] Georeferencing s7k with SBET -> LLH xyz..."
"$GEOR" -g -b "$SBET" "$S7K" > "$XYZ"

echo "[3/3] LLH -> cereal (mbes_ping::PingsT) ..."
"$C2LLH" "$XYZ" "$OUT" "$PING_SIZE"

echo "Done: $OUT"
