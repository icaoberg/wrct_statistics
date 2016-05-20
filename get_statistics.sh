#!/bin/bash

DATE=$(date +'%Y%m%d')
OUTPUT_FILENAME=$DATE.csv
wget --quiet --output-document temp.txt http://stream.wrct.org:8000/status.xsl 
STAT=`grep "Listen" temp.txt | cut -d":" -f9 | cut -d">" -f3 | cut -d"<" -f1`
echo $(date '+%A')","$(date +'%m/%d/%Y')","$(date +'%R')","$STAT >> $OUTPUT_FILENAME
rm temp.txt
