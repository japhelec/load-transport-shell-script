#!/bin/bash

source /home/kuei/Documents/shell/coop_config.sh

# folder name
DIR_NS="4_tellos_coop_test"
FILE_NAME="thrust_08_5_sec_hover_7_sec_1st"
FLY_TIME=5

# 4. rosbag
echo "=========================================="
echo "===============rosbag record=============="
echo "=========================================="
mkdir -p "/home/kuei/Documents/records/${DIR_NS}"
rosbag record -a -o "/home/kuei/Documents/records/${DIR_NS}/${FILE_NAME}.bag" &
sleep 3


# 4. fly upward
echo "=========================================="
echo "===============fly upward==============="
echo "=========================================="
if [ $IS_NODE_1 == "true" ]
then
    rosrun load_transport vel_cmd.py $TELLO_1_NS/cmd_vel ${FLY_TIME} &
fi
if [ $IS_NODE_2 == "true" ]
then
    rosrun load_transport vel_cmd.py $TELLO_2_NS/cmd_vel ${FLY_TIME} &
fi
if [ $IS_NODE_3 == "true" ]
then
    rosrun load_transport vel_cmd.py $TELLO_3_NS/cmd_vel ${FLY_TIME} &
fi
if [ $IS_NODE_4 == "true" ]
then
    rosrun load_transport vel_cmd.py $TELLO_4_NS/cmd_vel ${FLY_TIME} 
fi

sleep 7


# 5. land
echo "=========================================="
echo "===============land command==============="
echo "=========================================="
if [ $IS_NODE_1 == "true" ]
then
    rosrun load_transport talker.py $TELLO_1_NS/land &
fi
if [ $IS_NODE_2 == "true" ]
then
    rosrun load_transport talker.py $TELLO_2_NS/land &
fi
if [ $IS_NODE_3 == "true" ]
then
    rosrun load_transport talker.py $TELLO_3_NS/land &
fi
if [ $IS_NODE_4 == "true" ]
then
    rosrun load_transport talker.py $TELLO_4_NS/land &
fi


echo "=========================================="
echo "===============land sleep==============="
echo "=========================================="
sleep 5

# 6. clean
echo "=========================================="
echo "===============clean all==============="
echo "=========================================="
rosnode kill -a
killall -9 rosmaster