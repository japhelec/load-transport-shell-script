#!/bin/bash
me=`pwd "$0"`
DIR_NS="$me/../records/202305/0517/distance_leader/K0808"
# DIR_NS="$me/../records/202305/0515/no_payload/K0808"
BAG_NAME="Test1"
rosparam dump "$DIR_NS/$BAG_NAME.yaml"