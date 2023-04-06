# eagle-logger
custom logger that can be used in Linux and Mac systems

To get started, copy ```logger.sh``` to any directory and run as executable.

## Usage Options
**-m** 'log message' &emsp; &emsp; pass string log messages. Compulsory<br />
**-o** 'file with path' &emsp; &emsp; write to output file. Defaults to /var/logs/tracelog.```current date``` <br />
**-d** 			  &emsp; &emsp; &emsp;  &emsp; &emsp;  &emsp;  &emsp; turn off timestamp logging. Defaults to true<br />

### To Do
```
Add logrotate to auto rotate logs on given interval basis with support for setting file size limits, compression, etc
```
