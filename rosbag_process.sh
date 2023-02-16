#!/bin/bash

dir="20230216/single_D/unfiltered"
me=`pwd "$0"`
tello_ns="tello_D"

search_dir="$me/../records/${dir}"
for entry in "$search_dir"/*.bag
do
    echo $entry
    bagname="$(basename "$entry" | sed 's/\(.*\)\..*/\1/')"
    mkdir -p "/home/kuei/Documents/records/${dir}/$bagname"
    python3 /home/kuei/Documents/records/${dir}/bag2csv.py $dir $bagname $tello_ns
done

# zip -r $search_dir/$dir.zip $search_dir 