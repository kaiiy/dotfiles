#!/usr/bin/env bash

mappings=$(cat mappings.json | jq ".mappings")
mapping_num=$(echo $mappings | jq length)


# for conf_file in $(find ./conf -type f); do
#     # for 
#     # dir 
#     # ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
#     # echo $conf_dir 
# done

for mapping_idx in $(seq 0 $(($mapping_num-1))); do
    type=$(echo  $mappings | jq ".[$mapping_idx].type")
    echo $type
    if [ $type = 'dir' ]; then
       echo "hi"
    fi
done
