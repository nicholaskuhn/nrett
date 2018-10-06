#!/bin/bash -
#===============================================================================
#
#          FILE: transferFile.sh
#
#         USAGE: ./transferFile.sh
#
#   DESCRIPTION: Transfer compressed file using ftp
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Nicholas Kuhn (nkuhn), nicholaskuhn@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:11:47 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

HOST="137.190.19.85"

dateFormat=`date +%Y_%m_%d_%H`

# Check for user and password
echo "Checking for user and password"
if [[ ! -z $1 && ! -z $2 ]]
then
    ftp -inv $HOST <<END_SCRIPT
user $1 $2
cd /files
mput NRETT_DATA_FILTER_*
bye
END_SCRIPT
else
    echo "No user/pass entered, exiting ftp"
fi

exit 0
