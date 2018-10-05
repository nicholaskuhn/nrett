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

# Here I assume $1 and $2 are the beginning year and last year that the user
# enters. To retrieve the files within the year range I check to see if the
# range is valid. If not then the program logs an error. 

if [[ $1 -lt $2 ]]
then 
    i=$2
    while [[ $i -le $2 ]]
    do
        `wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$i.tar.gz`
        i=$((i + 1))
    done
else
    echo "Error, invalid date range"
    echo "invalid date range" > log
    exit 2
fi

exit 0     
