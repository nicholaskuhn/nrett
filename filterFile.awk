#!/usr/bin/awk -f

# Use awk to filter out the data you want: Canadian Females along with thier
# Firsname, Lastname, Email, Gender, Country
# Also, make sure you get rid of the header

BEGIN {FS=","}
{
    if (($5 == "Female") && ($6 == "Canada"))
    {
           
        print $2","$3","$4","$5","$6

    }

}
