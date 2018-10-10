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

mkdir temp

# expand all .tar.gz files that were retreived from the wget script and
# save them to one file in a temp directory. Log your activity. 
for f in *.tar.gz;
do
    tar -xvzf "$f"
    mv "$f" temp
    cat *.csv >> temp.txt;
    mv *.csv temp
    echo "tar.gz files have been expanded" >> log.txt
done


exit 0
