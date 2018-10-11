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
Compresses the final filter data file with the log file

## transferFile.sh - Nick to edit
Transfers file via FTP if user has entered their user and password

## cleanDirectory.sh
Removes the temp dir and its contents that were created from the expandFile.sh program

## wrapper.sh
Calls all the scripts. This is the script you will execute and add parameters to.
Loops through the range of year calls to get all files associated with those years.
Will send an email on run containing logFile info and ftp transfer info
Contains a UsageFunction to help the user run the script

## Credits
Nick Kuhn

Brett Cloward
