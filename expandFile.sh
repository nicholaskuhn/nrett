#!/bin/bash -
#===============================================================================
#
#          FILE: expandFile.sh
#
#         USAGE: ./expandFile.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Nicholas Kuhn (nkuhn), nicholaskuhn@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:10:38 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

directory="$HOME/log/$month"
logFile="finalProject_$date.log"

mkdir temp
mv *tar.gz temp

echo "temp directory created, all tar.gz files moved to temp directory" >> $directory/$logFile

cd temp
gunzip *tar.gz


for file in $PWD/tmp
do
    tar -xvf | cat * >> ./../temp.txt
    echo "All tar files unwrapped. Data has been written to temp.txt in parent directory" >> $directory/$logFile
done


# Where I'm stuck: my for loop throws an error but the program does end up 
# appending the .csv files the .tar files contain into temp.txt. It's possible
# Also, the assignemtn says to "check the exit code." Any idea what that means? 


exit 0
