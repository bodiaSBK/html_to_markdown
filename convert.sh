#!/bin/bash

if [ -n "$1" ]
then
echo Folder with html files $1.
else
echo "No parameters found."
echo "Usage: ./convert.sh <path_to_html_files_folder>"
fi

yourfilenames=`ls $1/*.html`
for eachfile in $yourfilenames
do
   #echo $eachfile
   FILENAME=$(basename ${eachfile%.*})
   echo $(basename ${eachfile%.*})
   echo $1\\$FILENAME.md  
   html2markdown $eachfile utf-8 --default-image-alt ''$eachfile'' --body-width=0 --single-line-break> $FILENAME.md  
done