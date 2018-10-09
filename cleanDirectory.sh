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
directory="$HOME/log/$month"
logFile="finalProject_$date.log"


rm -r temp

echo "temp directory removed" >> $directory/$logFile
