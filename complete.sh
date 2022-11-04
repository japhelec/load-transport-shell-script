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

# =============================================================
# [cheange config]
# =============================================================
# control which node
IS_NODE_1="true"
IS_NODE_2="false"
IS_NODE_3="false"

# control which tello
TELLO_1_AP=$AP_TELLO_601
TELLO_1_NS=$NS_TELLO_601
TELLO_2_AP=$AP_TELLO_C
TELLO_2_NS=$NS_TELLO_C
TELLO_3_AP=$AP_TELLO_E
TELLO_3_NS=$NS_TELLO_E

# =============================================================
# [flow]
# =============================================================
# connect to drones
source /home/kuei/Documents/shell/connect_to_drones.sh

# enter control mode
roslaunch tello_driver tello_node.launch \
    tello_ns1:=$TELLO_1_NS \
    tello_ns2:=$TELLO_2_NS \
    tello_ns3:=$TELLO_3_NS \
    if1:=$IF_1 \
    if2:=$IF_2 \
    if3:=$IF_3 \
    isNode1:=$IS_NODE_1 \
    isNode2:=$IS_NODE_2 \
    isNode3:=$IS_NODE_3 

# echo "==========================================" 
# echo "==============launch started=============="
# echo "=========================================="
# sleep 10

# # rosbag
# echo "=========================================="
# echo "===============launch ended==============="
# echo "=========================================="
# rosbag record -a -o "/home/kuei/Documents/shell/records/601_C_E.bag" &
# sleep 5



# # takeoff
# echo "=========================================="
# echo "===============takeoff command==============="
# echo "=========================================="
# rosrun load_transport talker.py $NS_TELLO_601/takeoff &
# # rosrun load_transport talker.py $NS_TELLO_C/takeoff &
# # rosrun load_transport talker.py $NS_TELLO_E/takeoff &

# echo "=========================================="
# echo "===============takeoff sleep==============="
# echo "=========================================="
# sleep 10

# # land
# echo "=========================================="
# echo "===============land command==============="
# echo "=========================================="
# rosrun load_transport talker.py $NS_TELLO_601/land &
# # rosrun load_transport talker.py $NS_TELLO_C/land &
# # rosrun load_transport talker.py $NS_TELLO_E/land &


# echo "=========================================="
# echo "===============land sleep==============="
# echo "=========================================="
# sleep 10

# echo "=========================================="
# echo "===============clean all==============="
# echo "=========================================="
# rosnode kill -a
# killall -9 rosmaster