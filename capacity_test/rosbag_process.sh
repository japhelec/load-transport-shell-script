#!/bin/bash

dir="capacity_test"


search_dir="/home/kuei/Documents/records/${dir}"
for entry in "$search_dir"/*.bag
do
    bagname="$(basename "$entry" | sed 's/\(.*\)\..*/\1/')"
    mkdir -p "/home/kuei/Documents/records/${dir}/$bagname"
    python3 /home/kuei/Documents/records/${dir}/bag2csv.py $dir $bagname
done

zip -r $search_dir/$dir.zip $search_dir 