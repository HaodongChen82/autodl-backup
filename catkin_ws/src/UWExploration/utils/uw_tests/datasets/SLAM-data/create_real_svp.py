#!/usr/bin/env python3
"""
从真实工程日志中提取声速剖面数据
创建正确的svp.cereal文件
"""
import pandas as pd
import numpy as np
from auvlib.data_tools import csv_data

def extract_real_svp_data():
    """从engineering_log.csv中提取真实的声速数据"""
    
    # 读取工程日志
    df = pd.read_csv('engineering_log.csv')
    
    # 提取声速、温度、盐度数据
    sound_speed_cols = [col for col in df.columns if 'speed_of_sound' in col]
    temp_cols = [col for col in df.columns if 'temperature' in col and 'CTD' in col]
    salinity_cols = [col for col in df.columns if 'salinity' in col and 'CTD' in col]
    
    print(f"找到的声速列: {sound_speed_cols}")
    print(f"找到的温度列: {temp_cols}")
    print(f"找到的盐度列: {salinity_cols}")
    
    # 使用NorbitBathy_speed_of_sound作为主要声速数据
    if 'NorbitBathy_speed_of_sound' in df.columns:
        sound_speeds = df['NorbitBathy_speed_of_sound'].dropna()
        print(f"声速数据范围: {sound_speeds.min():.2f} - {sound_speeds.max():.2f} m/s")
        print(f"声速数据数量: {len(sound_speeds)}")
        
        # 计算平均声速
        mean_sound_speed = sound_speeds.mean()
        print(f"平均声速: {mean_sound_speed:.2f} m/s")
        
        # 创建简化的声速剖面（类似作者的方法）
        svp_entry = csv_data.csv_asvp_sound_speed()
        svp_entry.dbars = np.array([0, 10, 20, 30, 40, 50])  # 深度层
        svp_entry.vels = np.array([mean_sound_speed] * 6)    # 每层使用平均声速
        
        return [svp_entry]
    
    else:
        print("未找到声速数据，使用默认值")
        # 创建默认声速剖面
        svp_entry = csv_data.csv_asvp_sound_speed()
        svp_entry.dbars = np.array([0, 10, 20, 30, 40, 50])
        svp_entry.vels = np.array([1500.0] * 6)  # 默认声速1500 m/s
        
        return [svp_entry]

def create_svp_cereal():
    """创建svp.cereal文件"""
    
    print("正在从真实数据创建svp.cereal文件...")
    
    # 提取真实声速数据
    svp_entries = extract_real_svp_data()
    
    # 保存为cereal格式
    csv_data.write_data(svp_entries, 'svp.cereal')
    
    print("✅ svp.cereal文件创建成功！")
    print(f"文件大小: {len(svp_entries)} 个声速剖面条目")

if __name__ == "__main__":
    create_svp_cereal() 