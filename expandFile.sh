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

month=`date +%m`
date=`date +%Y-%m-%d`
directory="$HOME/log/$month"
logFile="finalProject_$date.log"

mkdir temp

# expand all .tar.gz files that were retreived from the wget script and
# save them to a temp directory. The output from the csv files
# will be saved in a temp.txt file in the nrett directory. Log your activity. 
for f in *.tar.gz;
do
    tar -xvzf "$f"
    mv "$f" temp
    cat *.csv >> temp.txt;
    mv *.csv temp
    echo "tar.gz files have been expanded" >> $directory/$logFile
done


exit 0
