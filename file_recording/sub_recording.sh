#!/bin/bash

IFS=" "
read -ra array_input <<< "$1"
if [[ "${array_input[3]}" == "Updated" ]]
then
    IFS="."
    read -ra file_mkv <<< "${array_input[0]}"
    IFS=" "

    if [[ "${file_mkv[${#file_mkv[@]}-1]}" == "mkv" ]]
    then
        echo ${array_input[0]}
        mkvtomp4 ${array_input[0]}
        sshpass -p 'admin' scp ${file_mkv[0]}.mp4 ac@192.168.0.162:~/recordings
        find . -name "*.mkv" -type f -delete
    fi
fi

