#!/bin/bash -
#===============================================================================
#
#          FILE: filterFile.sh
#
#         USAGE: ./filterFile.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Nicholas Kuhn (nkuhn), nicholaskuhn@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:11:03 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

month=`date +%m`
date=`date +%Y-%m-%d`
directory="$HOME/log/$month"
logFile="finalProject_$date.log"

# call the sed file and awk file to modify/filter the data you want
# from temp.txt then write that data to a new file
sed -f filterFile.sed temp.txt | awk -f filterFile.awk >> filterd.txt

if [[ $? -eq 0 ]]
then
    echo "file to filter not found" >> $directory/$logFile
    exit 2
else
    echo "filterd.txt has been created" >> $directory/$logFile
fi

exit 0
