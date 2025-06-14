#!/bin/bash


tempfile="/home/utsav/Error/server_logs.txt"


touch "$tempfile"


trap 'echo "Cleaning up... Removing temp file"; rm -f "$tempfile"; echo " Done.";' EXIT

echo " Downloading logs from server..."

echo "Log line 1: Server started" >> "$tempfile"
echo "Log line 2: Connection established" >> "$tempfile"



echo " Processing logs..."
sleep 100s



echo " Finished processing logs."

exit 0

