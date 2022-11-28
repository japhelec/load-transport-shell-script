#!/bin/bash

source /home/kuei/Documents/shell/coop_config.sh

echo "==========================================" 
echo "==============launch started=============="
echo "=========================================="
roslaunch tello_driver tello_node.launch \
    tello_ns1:=$TELLO_1_NS \
    tello_ns2:=$TELLO_2_NS \
    tello_ns3:=$TELLO_3_NS \
    tello_ns4:=$TELLO_4_NS \
    if1:=$IF_1 \
    if2:=$IF_2 \
    if3:=$IF_3 \
    if4:=$IF_4 \
    isNode1:=$IS_NODE_1 \
    isNode2:=$IS_NODE_2 \
    isNode3:=$IS_NODE_3 \
    isNode4:=$IS_NODE_4 