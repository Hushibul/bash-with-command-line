#!/bin/bash

#for loop
for i in {1..5..1}; do
    touch "${i}.txt"
    echo "$i"
done

# while loop
while read -r line; do
  echo "$line"
done <random.txt

#functions 
getAreaOfCircleOrCircumference() {
    PI=3.1416
    radius=$1
    type=$2

   if [ "$type" == "a" ]; then
        area=$(echo "scale=2; $PI * $radius * $radius" | bc)
        echo $area
    else 
        circumference=$(echo "scale=2; 2 * $PI * $radius" | bc)
        echo $circumference
    fi
}

# getAreaOfCircleOrCircumference "7" "a"

for file in *.txt; do 
    if [[ "$file_name" =~ ^[0-9] || "$file_name" =~ [0-9]$ ]]; then
        # Rename the file
        mv "$file" "${file_name}_newname.txt"
        echo "Renamed: $file to ${file_name}_newname.txt"
    fi
done