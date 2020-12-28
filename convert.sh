#!/bin/bash

if [ -n "$1" ]
then
echo Folder with html files $1.
else
echo "No parameters found."
echo "Usage: ./convert.sh <path_to_html_files_folder>"
fi

#!/bin/bash
for filename in $1/*.html; do
	html2markdown "$filename" utf-8 --body-width=0 --single-line-break > "md/$(basename "$filename" .html).md"
done