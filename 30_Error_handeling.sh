

#!/bin/bash

a=10

[ $a -lt 0 ] && echo " a is postive " # if the first command is True then only second command will be True 
# in && second command will be printed only if first command will be true otherwise it will second command  
#this means T-> T 




[ $a -lt 0 ] || echo "command fails" # if the first command is False then only second command will be True 

# in || secnd command will be printed only if first command gets false or failed it means T->F
