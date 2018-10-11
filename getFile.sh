#!/bin/bash -
#===============================================================================
#
#          FILE: getFile.sh
#
#         USAGE: ./getFile.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Nicholas Kuhn (nkuhn), nicholaskuhn@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:10:03 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

month=`date +%m`
date=`date +%Y-%m-%d`
directory="$HOME/log/$month"
logFile="finalProject_$date.log"

`wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$1.tar.gz`

if [[ $? = 8 ]]
then 
    echo "file not found" >> "$directory/$logFile"
else
    echo "file located, downloading.." >> "$directory/$logFile"
fi

exit 0
