#!/usr/bin/env python3
import os
import sys
import time
import numpy as np
import rospy
from sensor_msgs.msg import PointCloud2, PointField
from std_msgs.msg import Header
import struct


def create_pointcloud2(points_xyz, frame_id="map"):
    header = Header()
    header.stamp = rospy.Time.now()
    header.frame_id = frame_id

    fields = [
        PointField('x', 0, PointField.FLOAT32, 1),
        PointField('y', 4, PointField.FLOAT32, 1),
        PointField('z', 8, PointField.FLOAT32, 1),
    ]

    data = []
    for x, y, z in points_xyz:
        data.append(struct.pack('<fff', float(x), float(y), float(z)))
    data = b''.join(data)

    pc2 = PointCloud2()
    pc2.header = header
    pc2.height = 1
    pc2.width = points_xyz.shape[0]
    pc2.fields = fields
    pc2.is_bigendian = False
    pc2.point_step = 12
    pc2.row_step = pc2.point_step * points_xyz.shape[0]
    pc2.is_dense = True
    pc2.data = data
    return pc2


def main():
    if len(sys.argv) < 2:
        print("Usage: publish_gp_map.py /path/to/svgp_di_post.npy [frame_id]")
        sys.exit(1)

    post_path = os.path.expanduser(sys.argv[1])
    frame_id = sys.argv[2] if len(sys.argv) > 2 else "map"

    if not os.path.exists(post_path):
        print("File not found:", post_path)
        sys.exit(1)

    arr = np.load(post_path)
    # Expect shape (N, 3) or dict with 'points'
    if isinstance(arr, np.ndarray):
        points = arr
    else:
        # try common keys
        for k in ('points', 'xyz', 'cloud'):
            if k in arr:
                points = arr[k]
                break
        else:
            raise ValueError("Unsupported npy/npz format. Expected ndarray or key 'points'.")

    if points.ndim != 2 or points.shape[1] < 3:
        raise ValueError(f"Invalid points shape: {points.shape}")

    rospy.init_node('publish_gp_map')
    pub = rospy.Publisher('/gp/map', PointCloud2, queue_size=1)
    rate = rospy.Rate(2.0)

    print(f"Publishing {points.shape[0]} points to /gp/map with frame_id={frame_id}")
    while not rospy.is_shutdown():
        msg = create_pointcloud2(points[:, :3], frame_id=frame_id)
        pub.publish(msg)
        rate.sleep()


if __name__ == '__main__':
    main() 