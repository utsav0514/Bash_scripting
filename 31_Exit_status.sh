#!/bin/bash

ls /tmp 
echo "The sucess exit status is: $?" # sucess exit status is always 0

ls /does/not/exits
echo "The failed exit status is: $?" # failed exit status is always non-zero (1-255)
