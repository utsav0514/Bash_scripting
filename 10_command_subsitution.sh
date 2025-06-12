#!/bin/bash

TODAY=$(date)
LIST=$(ls)
echo "Todays date is $TODAY"
echo -e  "list are :\n $LIST"

# -n means no new line at the end 
# -e means enable the escape sequence like \n \t etc 
