#!/bin/bash -
#===============================================================================
#
#          FILE: cleanDirectory.sh
#
#         USAGE: ./cleanDirectory.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Nicholas Kuhn (nkuhn), nicholaskuhn@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:12:08 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

month=`date +%m`
date=`date +%Y-%m-%d`
directory="$HOME/log/$month"
logFile="finalProject_$date.log"

# Remove the temp dir and its contents that were created from the 
# expandFile.sh program
rm -r temp

echo "temp directory removed" >> $directory/$logFile

exit 0
