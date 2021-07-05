#! /bin/bash

file_content="/Users/focus/CLionProjects/cp/main.cpp"
echo "which folder"
read folder_letter
if [[ "$folder_letter" == "ab" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/AtCoder/Beginner"
fi
if [[ "$folder_letter" == "ar" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/AtCoder/Regular"
fi
if [[ "$folder_letter" == "ag" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/AtCoder/Grand"
fi
if [[ "$folder_letter" == "d" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/DMOJ"
fi
if [[ "$folder_letter" == "b" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/BinarySearch"
fi
if [[ "$folder_letter" == "e" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/ECOO"
fi
if [[ "$folder_letter" == "l" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/Leetcode"
fi
if [[ "$folder_letter" == "h" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/HackerRank"
fi
if [[ "$folder_letter" == "ub" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/USACO/Bronze"
fi
if [[ "$folder_letter" == "us" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/USACO/Silver"
fi
if [[ "$folder_letter" == "ug" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/USACO/Gold"
fi
if [[ "$folder_letter" == "up" ]]
then 
    destination_path="/Users/focus/Code/competitive-programming/USACO/Platinum"
fi
cd $destination_path
echo "file name"
read intended_file_name
touch $intended_file_name
cat $file_content >> "$destination_path"/"$intended_file_name"
git add .
git commit -m "Commiting $intended_file_name"
git push

