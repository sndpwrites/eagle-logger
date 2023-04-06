#!/bin/bash
today=$(date +'%d%m%Y')
logFile="/var/logs/tracelog.$today"
INCLUDE_DATE=true
function help() {
	echo "Usage Options"
	echo -e "-m 'log message' \t pass string log messages. Compulsory"
	echo -e "-o 'file with path' \t write to output file. Defaults to $logFile"
	echo -e "-d \t\t\t turn off timestamp logging. Defaults to true"
}
while getopts 'hm:o:d' opt; do
  case "$opt" in
    h)
	help
	;;
    m)
	msg=$OPTARG
	;;
    d)
	INCLUDE_DATE=false
	;;
    o)
	echo "setting tracelog output file ${OPTARG}" 
	logFile=$OPTARG
	;;
    :)
	echo "Invalid arguments"
	;;
  esac
done
if [ "$INCLUDE_DATE" = true ] ; then
	echo -e "$(date +'%b %d %Y %H:%M:%S ') \t $msg" >> $logFile
else
	echo -e "$msg" >> $logFile
fi
