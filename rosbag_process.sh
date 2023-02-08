#!/bin/bash

dir="20230208/payload_centric/single"
me=`pwd "$0"`

search_dir="$me/../records/${dir}"
for entry in "$search_dir"/*.bag
do
    echo $entry
    bagname="$(basename "$entry" | sed 's/\(.*\)\..*/\1/')"
    mkdir -p "/home/kuei/Documents/records/${dir}/$bagname"
    python3 /home/kuei/Documents/records/${dir}/bag2csv.py $dir $bagname
done

# zip -r $search_dir/$dir.zip $search_dir 