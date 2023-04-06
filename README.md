# eagle-logger
custom logger that can be used in Linux and Mac systems

To get started, copy ```logger.sh``` to any directory and run as executable.

## Usage Options
**-m** 'log message' &emsp; &emsp; pass string log messages. Compulsory<br />
**-o** 'file with path' &emsp; &emsp; write to output file. Defaults to /var/logs/tracelog.```current date``` <br />
**-d** 			  &emsp; &emsp; &emsp;  &emsp; &emsp;  &emsp;  &emsp; turn off timestamp logging. Defaults to true<br />

## Example/ how-to-use
At minimum, you'd want to try something like:
```
./logger.sh -m "expo-webview - Received request for profile update"
```
Log message can be styled as necessary. I like to stick to a format of ```process_name``` and ```message``` separated by a hyphen.
<br />
```
./logger.sh -d -m "expo-webview - Received request for profile update" -o /var/etc/logs/expo.logs
```

### To Do
```
Add support for piping and redirects for easier integration.
Add logrotate to auto rotate logs on given interval basis with support for setting file size limits, compression, etc
```
