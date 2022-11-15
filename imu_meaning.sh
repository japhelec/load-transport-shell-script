#!/bin/bash
# =============================================================
# [fixed config]
# =============================================================
# interfaces
IF_built_in="wlp0s20f3"
IF_Long="wlx1cbfce8dc7fe" 
IF_DLink="wlxc4e90a08629a"
IF_1=$IF_built_in
IF_2=$IF_Long
IF_3=$IF_DLink

# APs
AP_TELLO_601="tello_601"
AP_TELLO_C="TELLO-584E48"
AP_TELLO_E="TELLO-5BF3D2"

# NS
NS_TELLO_601="tello_601"
NS_TELLO_C="tello_C"
NS_TELLO_E="tello_E"

# control which tello
TELLO_1_AP=$AP_TELLO_601
TELLO_1_NS=$NS_TELLO_601
TELLO_2_AP=$AP_TELLO_C
TELLO_2_NS=$NS_TELLO_C
TELLO_3_AP=$AP_TELLO_E
TELLO_3_NS=$NS_TELLO_E

# =============================================================
# [change config]
# =============================================================
# control which node
IS_NODE_1="true"
IS_NODE_2="false"
IS_NODE_3="false"

# folder name
DIR_NS="imu_meaning"
FILE_NAME="-y"
MODE_SIGN="-"
MODE_DIRECT="y"

# =============================================================
# [flow]
# =============================================================
# 1. connect to drones
source /home/kuei/Documents/shell/connect_to_drones.sh

# 2. enter control mode
echo "==========================================" 
echo "==============launch started=============="
echo "=========================================="
roslaunch tello_driver tello_node.launch \
    tello_ns1:=$TELLO_1_NS \
    tello_ns2:=$TELLO_2_NS \
    tello_ns3:=$TELLO_3_NS \
    if1:=$IF_1 \
    if2:=$IF_2 \
    if3:=$IF_3 \
    isNode1:=$IS_NODE_1 \
    isNode2:=$IS_NODE_2 \
    isNode3:=$IS_NODE_3 &

sleep 5

# 3. motor on
echo "=========================================="
echo "===============motor on command==============="
echo "=========================================="
if [ $IS_NODE_1 == "true" ]
then
    rosrun load_transport talker.py $TELLO_1_NS/manual_takeoff
fi
if [ $IS_NODE_2 == "true" ]
then
    rosrun load_transport talker.py $TELLO_2_NS/manual_takeoff
fi
if [ $IS_NODE_3 == "true" ]
then
    rosrun load_transport talker.py $TELLO_3_NS/manual_takeoff
fi

sleep 3

# 4. rosbag
echo "=========================================="
echo "===============launch ended==============="
echo "=========================================="
mkdir -p "/home/kuei/Documents/records/${DIR_NS}"
rosbag record -a -o "/home/kuei/Documents/records/${DIR_NS}/${FILE_NAME}.bag" &


# 4. fly 
rosrun load_transport imu_meaning_vel_cmd.py $MODE_SIGN $MODE_DIRECT


# 5. land
echo "=========================================="
echo "===============land command==============="
echo "=========================================="
if [ $IS_NODE_1 == "true" ]
then
    rosrun load_transport talker.py $TELLO_1_NS/land 
fi
if [ $IS_NODE_2 == "true" ]
then
    rosrun load_transport talker.py $TELLO_2_NS/land
fi
if [ $IS_NODE_3 == "true" ]
then
    rosrun load_transport talker.py $TELLO_3_NS/land 
fi

echo "=========================================="
echo "===============land sleep==============="
echo "=========================================="
sleep 3

# 6. clean
echo "=========================================="
echo "===============clean all==============="
echo "=========================================="
rosnode kill -a
killall -9 rosmaster