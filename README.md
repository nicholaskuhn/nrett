# Usage
[-f <first_YEAR>] (REQUIRED) [-l <last_YEAR>] (REQUIRED)
[-e <email>] (REQUIRED) [-u <user>] (optional) [-p <passwd>] (optional)

## gitFile.sh
Retrives files from icarus server. Takes in a single input parameter being the year

## expandFile.sh
expands all .tar.gz files that were retreived from the gitFile.sh script and saves them to a temp directory. The output from the csv files will be saved in a temp.txt file in the nrett directory. 

## filterFile.sh
Calls the sed file and awk file to modify/filter the data from temp.txt then writes that data to a new file called filterd.txt

## compressFile.sh - Nick to edit
Compresses the final filter data file

## transferFile.sh - Nick to edit
Transfers file via FTP

## cleanDirectory.sh
Removes the temp dir and its contents that were created from the expandFile.sh program

## wrapper.sh - Nick to edit
The main script

## Credits
Nick Kuhn

Brett Cloward
