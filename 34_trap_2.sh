#!/bin/bash

trap ' echo "The error occured in $LINENO"; exit 1' ERR

set -e

cp /file/that/does/not/exits.txt /tmp/
