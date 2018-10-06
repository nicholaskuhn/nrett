#!/bin/bash -
#===============================================================================
#
#          FILE: wrapper.sh
#
#         USAGE: ./wrapper.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:05:46 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Global Variables
have_f=0
have_l=0
have_e=0
have_u=0
have_p=0

month=`date +%m`
date=`date +%Y-%m-%d`
fullDate=`date '+%Y-%m-%d %H:%M:%S'`
directory="$HOME/log/$month"

if [[ ! -d $directory ]]
then
    `mkdir -p $directory`
fi

logFile="finalProject_$date.log"

# Usage function
UsageFunction()
{
    echo "Usage: $0 [-f <first_YEAR>] (REQUIRED) [-l <last_YEAR>] (REQUIRED)"
    echo "          [-e <email>] (REQUIRED) [-u <user>] (optional) [-p <passwd>] (optional)"
    exit 1
}

# Check to see if help was called
if [[ $1 == "--help" ]]
then
    UsageFunction
fi

# Check for 

while getopts ":f:l:e:u:p:" opt
do
    case $opt in
        f)
            have_f=1
            firstYear=$OPTARG
            ;;
        l)
            have_l=1
            lastYear=$OPTARG
            ;;
        e)
            have_e=1
            email=$OPTARG
            ;;
        u)
            have_u=1
            user=$OPTARG
            ;;
        p)
            have_p=1
            passwd=$OPTARG
            ;;
    esac
done

# Check for correct Number of arguments
if [[ $have_f -eq 1 && $have_l -eq 1 && $have_e -eq 1 ]]
then
    echo "Running script on $fullDate" >> /$directory/$logFile
    echo "Have required information" >> /$directory/$logFile
else
    UsageFunction
fi

## Make sure getopts are used
if [[ ! "$firstYear" || ! "$lastYear" || ! "$email" ]]
then
    UsageFunction
fi

if [[ $firstYear -lt $lastYear ]]
then 
    i=$firstYear
    while [[ $i -le $lastYear ]]
    do
        echo "Checking for file MOCK_DATA_$i.tar.gz" >> /$directory/$logFile
        sleep 1
        ./getFile.sh $i
        i=$((i + 1))
        done
else
    echo "Error, invalid date range" 
    echo "invalid date range"
    exit 2
fi

./compressFile.sh

# Send an email
`echo "Successfully transferred file to FTP <I.P.Address> server" | 
    mail -s "FTP transfer notification" $email`


exit 0
