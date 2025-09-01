#!/usr/bin/env python3
import struct
import sys
import os
import numpy as np
from datetime import datetime

class NorbitS7KParser:
    def __init__(self, filename):
        self.filename = filename
        self.file_size = os.path.getsize(filename)
        self.multibeam_pings = []
        self.navigation_data = []
        self.attitude_data = []
        
    def parse_record_header(self, f):
        """解析记录头"""
        header = f.read(16)
        if len(header) < 16:
            return None
            
        # 小端序解析
        sync = struct.unpack('<H', header[0:2])[0]
        version = struct.unpack('<H', header[2:4])[0]
        offset = struct.unpack('<I', header[4:8])[0]
        record_type = struct.unpack('<I', header[8:12])[0]
        record_size = struct.unpack('<I', header[12:16])[0]
        
        return {
            'sync': sync,
            'version': version,
            'offset': offset,
            'record_type': record_type,
            'record_size': record_size
        }
    
    def parse_multibeam_record(self, data, record_info):
        """解析多波束记录 (类型 2918988928)"""
        try:
            if len(data) < 100:  # 至少需要一些头部数据
                return None
            
            # 尝试解析多波束数据
            # 根据 Norbit 格式，通常包含：
            # - 时间戳
            # - 位置信息
            # - 姿态信息
            # - 波束数据
            
            ping_data = {
                'record_type': record_info['record_type'],
                'data_size': len(data),
                'timestamp': None,
                'position': None,
                'attitude': None,
                'beams': None
            }
            
            # 尝试解析时间戳 (通常在开头)
            try:
                timestamp = struct.unpack('<Q', data[0:8])[0]
                ping_data['timestamp'] = timestamp
            except:
                pass
            
            # 尝试解析位置信息 (可能在偏移位置)
            for offset in [8, 16, 24, 32, 40, 48]:
                if len(data) >= offset + 12:
                    try:
                        lat = struct.unpack('<f', data[offset:offset+4])[0]
                        lon = struct.unpack('<f', data[offset+4:offset+8])[0]
                        depth = struct.unpack('<f', data[offset+8:offset+12])[0]
                        
                        # 检查合理性
                        if (-90 <= lat <= 90 and -180 <= lon <= 180 and 0 <= depth <= 10000):
                            ping_data['position'] = (lat, lon, depth)
                            break
                    except:
                        continue
            
            # 尝试解析姿态信息
            for offset in [56, 64, 72, 80, 88, 96]:
                if len(data) >= offset + 12:
                    try:
                        roll = struct.unpack('<f', data[offset:offset+4])[0]
                        pitch = struct.unpack('<f', data[offset+4:offset+8])[0]
                        yaw = struct.unpack('<f', data[offset+8:offset+12])[0]
                        
                        # 检查合理性
                        if (abs(roll) <= 90 and abs(pitch) <= 90 and 0 <= yaw <= 360):
                            ping_data['attitude'] = (roll, pitch, yaw)
                            break
                    except:
                        continue
            
            # 尝试解析波束数据
            # 通常在数据的中后部分
            beam_start = 200  # 假设波束数据从200字节开始
            if len(data) > beam_start + 100:
                try:
                    # 尝试解析波束数量
                    num_beams = struct.unpack('<H', data[beam_start:beam_start+2])[0]
                    if 0 < num_beams < 1000:  # 合理的波束数
                        ping_data['num_beams'] = num_beams
                        
                        # 尝试解析波束数据
                        beam_data = []
                        beam_offset = beam_start + 4
                        for i in range(min(num_beams, 100)):  # 最多解析100个波束
                            if beam_offset + 8 <= len(data):
                                try:
                                    angle = struct.unpack('<f', data[beam_offset:beam_offset+4])[0]
                                    range_val = struct.unpack('<f', data[beam_offset+4:beam_offset+8])[0]
                                    beam_data.append((angle, range_val))
                                    beam_offset += 8
                                except:
                                    break
                        
                        if beam_data:
                            ping_data['beams'] = beam_data
                except:
                    pass
            
            return ping_data
            
        except Exception as e:
            return {'error': str(e), 'data_size': len(data)}
    
    def parse_file(self, max_records=None):
        """解析文件"""
        print(f"开始解析文件: {self.filename}")
        print(f"文件大小: {self.file_size} 字节")
        
        with open(self.filename, 'rb') as f:
            record_count = 0
            multibeam_count = 0
            
            while True:
                if max_records and record_count >= max_records:
                    break
                    
                pos = f.tell()
                if pos >= self.file_size - 16:
                    break
                
                # 解析记录头
                record_info = self.parse_record_header(f)
                if not record_info:
                    f.seek(pos + 1)
                    continue
                
                # 检查记录合理性
                if (record_info['record_size'] <= 0 or 
                    record_info['record_size'] > 1000000 or
                    pos + record_info['record_size'] > self.file_size):
                    f.seek(pos + 1)
                    continue
                
                # 读取记录数据
                data = f.read(record_info['record_size'])
                if len(data) < record_info['record_size']:
                    f.seek(pos + 1)
                    continue
                
                # 解析特定类型的记录
                if record_info['record_type'] == 2918988928:  # 多波束数据
                    ping_data = self.parse_multibeam_record(data, record_info)
                    if ping_data:
                        self.multibeam_pings.append(ping_data)
                        multibeam_count += 1
                
                record_count += 1
                if record_count % 1000 == 0:
                    print(f"已解析 {record_count} 个记录，找到 {multibeam_count} 个多波束记录...")
        
        print(f"\n解析完成!")
        print(f"总记录数: {record_count}")
        print(f"多波束记录: {multibeam_count}")
        
        return self.multibeam_pings
    
    def show_sample_data(self):
        """显示样本数据"""
        print("\n=== 多波束数据样本 ===")
        for i, ping in enumerate(self.multibeam_pings[:5]):
            print(f"\nPing {i+1}:")
            print(f"  数据大小: {ping['data_size']}")
            if ping.get('timestamp'):
                print(f"  时间戳: {ping['timestamp']}")
            if ping.get('position'):
                lat, lon, depth = ping['position']
                print(f"  位置: 纬度={lat:.6f}°, 经度={lon:.6f}°, 深度={depth:.2f}m")
            if ping.get('attitude'):
                roll, pitch, yaw = ping['attitude']
                print(f"  姿态: 横滚={roll:.2f}°, 俯仰={pitch:.2f}°, 航向={yaw:.2f}°")
            if ping.get('num_beams'):
                print(f"  波束数: {ping['num_beams']}")
            if ping.get('beams'):
                print(f"  波束数据: {len(ping['beams'])} 个波束")
                for j, (angle, range_val) in enumerate(ping['beams'][:5]):
                    print(f"    波束 {j+1}: 角度={angle:.2f}°, 距离={range_val:.2f}m")
    
    def export_to_csv(self, output_file):
        """导出为CSV格式"""
        print(f"\n导出数据到: {output_file}")
        
        with open(output_file, 'w') as f:
            f.write("ping_id,timestamp,lat,lon,depth,roll,pitch,yaw,num_beams\n")
            
            for i, ping in enumerate(self.multibeam_pings):
                timestamp = ping.get('timestamp', 0)
                lat, lon, depth = ping.get('position', (0, 0, 0))
                roll, pitch, yaw = ping.get('attitude', (0, 0, 0))
                num_beams = ping.get('num_beams', 0)
                
                f.write(f"{i},{timestamp},{lat},{lon},{depth},{roll},{pitch},{yaw},{num_beams}\n")
        
        print(f"导出完成，共 {len(self.multibeam_pings)} 个ping")

def main():
    if len(sys.argv) != 2:
        print("用法: python3 norbit_parser_v2.py <s7k文件>")
        sys.exit(1)
    
    filename = sys.argv[1]
    if not os.path.exists(filename):
        print(f"文件不存在: {filename}")
        sys.exit(1)
    
    parser = NorbitS7KParser(filename)
    pings = parser.parse_file(max_records=10000)  # 先解析前10000个记录
    parser.show_sample_data()
    
    if pings:
        parser.export_to_csv("norbit_data.csv")
        print(f"\n成功解析 {len(pings)} 个多波束ping")
        print("数据已导出到 norbit_data.csv")
    else:
        print("未找到多波束数据")

if __name__ == "__main__":
    main()