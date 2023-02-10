#!/bin/bash

dir="20230209/payload_centric/two_40cm/3_wp"
me=`pwd "$0"`

search_dir="$me/../records/${dir}"
for entry in "$search_dir"/*.bag
do
    echo $entry
    bagname="$(basename "$entry" | sed 's/\(.*\)\..*/\1/')"
    mkdir -p "/home/kuei/Documents/records/${dir}/$bagname/tello_A"
    mkdir -p "/home/kuei/Documents/records/${dir}/$bagname/tello_D"
    python3 /home/kuei/Documents/records/${dir}/bag2csv.py $dir $bagname "tello_A"
    python3 /home/kuei/Documents/records/${dir}/bag2csv.py $dir $bagname "tello_D"
done

# zip -r $search_dir/$dir.zip $search_dir 