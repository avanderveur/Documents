#!/bin/bash
FILE="$1"
 
if [ -f "$newfile.txt" ]
then
   echo "File $newfile.txt exist."
else
   echo "File $newfile.txt does not exist" 
fi


#!/bin/bash
FILE="$1"
 
if [ -f "$FILE" ]
then
   echo "File $FILE exist."
else
   echo "File $FILE does not exist" 
fi
