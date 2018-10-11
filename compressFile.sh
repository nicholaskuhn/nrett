#!/bin/bash -
#===============================================================================
#
#          FILE: compressFile.sh
#
#         USAGE: ./compressFile.sh
#
#   DESCRIPTION: Compresses the file
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Nicholas Kuhn (nkuhn), nicholaskuhn@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:11:19 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

month=`date +%m`
date=`date +%Y-%m-%d`
dateFormat=`date +%Y_%m_%d_%H:%M`
directory="$HOME/log/$month"
logFile="finalProject_$date.log"

echo "Compressing files.." >> $directory/$logFile

mv $directory/$logFile $PWD

zip NRETT_DATA_FILTER_${dateFormat}.zip *.log filterd.txt

mv finalProject_*.log $directory/$logFile

exit 0
