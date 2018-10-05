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


`wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$1.tar.gz`

if [[ $? = 0 || $? = 8 ]]
then 
    echo "file not found" > getFilelog
fi
