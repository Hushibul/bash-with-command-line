#!/bin/bash

# echo "Type insert, update, or delete to manipulate file"
# read command

# if [ "$command" == "insert" ]; then
#     touch new_file.txt
#     echo "File 'new_file.txt' created."
# elif [ "$command" == "update" ]; then
#     if [ -e "text.txt" ]; then
#         cat text.txt
#     else
#         echo "New File Created" > text.txt
#     fi
# else 
#     rm -r "$(pwd)"/new_file.txt
# fi


echo "Type an operation: insert or update or delete or rename"

read operation

if [ "$operation" == "insert" ]; then 
    echo "Enter file_name"
    read file_name

    if [ -z "file_name" ]; then
       echo "File did not inserted"
    else
        touch "$file_name.txt"
        echo "File $file_name created"

    fi
elif [ "$operation" == "update" ]; then
    echo "Enter Existing file_name"
    read file_name 

    if [ -e "$file_name" ]; then 
        echo "Enter new content for $file_name: Ctrl + D to save"

        cat > "$file_name"

        echo "Content Updated"
    else 
        echo "$file_name does not exits!!!"
    fi
elif [ "$operation" == "delete" ]; then
    echo "Enter Existing file_name"
    read file_name

    if [ -e "$file_name" ]; then 
        rm -r "$(pwd)"/$file_name
        echo "$file_name successfully deleted"
    elif [ "$file_name" == "all" ]; then
        rm -r *.txt
        echo "All files deleted" 
    else 
        echo "$file_name does not exits!!!"
    fi
else 
    echo "Enter Existing file_name"
    read file_name 

    if [ -e "$file_name" ]; then 
        echo "Enter new file_name"
        read new_file_name
        mv "$file_name" "$new_file_name"
    else 
        echo "$file_name does not exists"
    fi
fi