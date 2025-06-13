#!/bin/bash

USERS="ram hari Sita"

for user in $USERS
do
    if id "$user" &>/dev/null; then
        echo "User $user already exists. Skipping..."
    else
       sudo useradd -m -d /home/$user -s /bin/bash -g sudo -c "$user" $user
        echo "User $user created and added to sudo group."
    fi
done

