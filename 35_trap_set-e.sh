#!/bin/bash

set -e 
trap ' echo "An error occured in line: $LINENO"; exit 1 ' ERR 

echo "Step 1"

cp /file/does/not/exist.sh /somescripts/

echo "step 2"
mv /file/does/not/exits.sh  hello.sh
