#!/bin/bash
me=`pwd "$0"`
DIR_NS="$me/../records/202303/0315/three_drones/"
BAG_NAME="Test6_board"
rosparam dump "$DIR_NS/$BAG_NAME.yaml"