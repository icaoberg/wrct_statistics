#!/bin/bash

wget --quiet --output-document temp.txt http://stream.wrct.org:8000/status.xsl 
STAT=`grep "Listen" temp.txt | cut -d":" -f9 | cut -d">" -f3 | cut -d"<" -f1`
echo  $(date +'%m/%d/%Y')","$(date +'%R')","$STAT >> statistics.csv
rm temp.txt
