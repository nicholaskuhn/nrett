#!/bin/bash -
#===============================================================================
#
#          FILE: filterFile.sh
#
#         USAGE: ./filterFile.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Nicholas Kuhn (nkuhn), nicholaskuhn@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:11:03 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Gender is the 5th field, you need females
# Country is the 6th field, you need Canadians
# Fields are separated by commas
# If the email field is NULL put in waldo@weber.edu
# Create a new file with the filtered record, do not include the ID field
# and don't include the header record as well
# log all your activity


BEGIN {FS=","}
    {

        if($5 = "Female" && $6 = "Canada")
            {
                print $2","$3","$4","$5","$6
            }

    }


# Where I'm stuck: I'm stuck onthe whole program haha! Supposedly you can use 
# $2, $3, and so on to represent different fields. My if statement has an error
# as listed within the vim editor. I know I have some more to add onto this too
# but I'd like to get that error to go away. Or maybe there's a better way...
