


# Install autodl-backup on your own server
This project is based on UWExploration: https://github.com/ignaciotb/UWExploration
## Environment Requirements

- Ubuntu 20.04
- Python 3.8+
- ROS Noetic
- Catkin Workspace
- AUVLib Library
- Autodl-backup Data Package

When installing auvlib, compile and install the following: gtsam → g2o → cnpy → embree → auvlib

gtsam:
g2o: https://github.com/RainerKuemmerle/g2o
cnpy: https://github.com/rogersce/cnpy
embree: https://github.com/RenderKit/embree
auvlib: https://github.com/nilsbore/auvlib

## Package Installation
git clone https://github.com/HaodongChen82/autodl-backup
Or download the release directly: autodl-backup Unzip the autodl_bundle_2025-09-01.tar.zst.part_000 and autodl_bundle_2025-09-01.tar.zst.part_001 files from 2025-09-01.

Data location:
catkin_ws/src/UWExploration/utils/uw_tests/datasets/SLAM-data/mbes_pings_fixed.cereal

Result location:
catkin_ws/src/UWExploration/utils/uw_tests/datasets/SLAM-data/svgp_di_loss.png
catkin_ws/src/UWExploration/utils/uw_tests/datasets/SLAM-data/svgp_di.png

Parameter adjustment location: catkin_ws/src/UWExploration/mapping/gp_mapping/src/gp_mapping
# Run Mode
## 1: SLAM Uncertainty Propagation

### Cleaning Up the Environment
```bash
pkill -f "roscore|roslaunch|rviz|auv_|robot_state_publisher"
```

### Terminal 1: Start roscore
```bash
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
roscore
```

### Terminal 2: Start the uncertainty management node
```bash
export PYTHONPATH=/root/auvlib/install/lib:$PYTHONPATH
export LD_LIBRARY_PATH=/root/auvlib/install/lib:$LD_LIBRARY_PATH
python3 -c "from auvlib.data_tools import std_data, all_data; print('AUVLIB OK:', std_data.__file__)"


export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
roslaunch uncert_management ui_test.launch dataset:=SLAM-data
#roslaunch uncert_management ui_test.launch mode:=gt namespace:=hugin_0 dataset:=ripples

```


### Terminal 3: Start RViz visualization
```bash
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
rosrun rviz rviz
```

### Verify Command
```bash
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
rostopic list | grep mbes
rostopic echo /sim/hugin/mbes_pings -n 1
```

---

## 2: GP map training 

### Clean up the environment
```bash
pkill -f "roscore|roslaunch|rviz|auv_|robot_state_publisher"
```

### Terminal 1: Start roscore
```bash
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
roscore
```

### Terminal 2: Start GP map training
```bash
export CUDA_VISIBLE_DEVICES=""
export PYTHONPATH=/root/catkin_ws/src/UWExploration/mapping/gp_mapping/src:$PYTHONPATH
cd /root/catkin_ws/src/UWExploration/utils/uw_tests/datasets/SLAM-data
python3 /root/catkin_ws/src/UWExploration/mapping/gp_mapping/src/gp_mapping/gp_map_training.py \
--gp_inputs di \
--survey_name ~/.ros/SLAM-data_svgp_input.npz
```
### Terminal 4: Start RViz visualization
```bash

export PATH=/opt/ros/noetic/bin:$PATH
export ROS_MASTER_URI=http://localhost:11311
source ~/catkin_ws/devel/setup.bash
export PYTHONPATH=/root/auvlib/install/lib:$PYTHONPATH
export DISPLAY=:1
export LIBGL_ALWAYS_SOFTWARE=1
rosrun rviz rviz -d ~/catkin_ws/src/UWExploration/real_auv/bathy_mapper/rviz/bathy_map.rviz
```

### Verification command
```bash
# Check GP topic
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
rostopic list | grep gp

# View map data
rostopic echo /gp/map -n 1
```

---

## 3: RBPF SLAM

### Cleaning up the environment
```bash
pkill -f "roscore|roslaunch|rviz|auv_|robot_state_publisher"
```

### Terminal 1: Launch roscore
```bash
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
roscore
```

### Terminal 2: Launch RBPF SLAM
```bash
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
roslaunch rbpf_slam rbpf_slam.launch dataset:=SLAM-data
```

### Terminal 3: Start RViz visualization
```bash
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
rosrun rviz rviz
```

### Verification command
```bash
# Check RBPF topic
export PATH=$PATH:/opt/ros/noetic/bin
source /opt/ros/noetic/setup.bash
rostopic list | grep rbpf

# View SLAM results
rostopic echo /rbpf/pose -n 1
```

---

## Environment Setup Instructions

### Key Parameters
- **`dataset:=SLAM-data`** - Specifies the use of your real-world dataset
- **`export PATH=$PATH:/opt/ros/noetic/bin`** - Ensures ROS commands are available
- **`source /opt/ros/noetic/setup.bash`** - Loads the ROS environment
- **`source ~/catkin_ws/devel/setup.bash`** - Loads the workspace

