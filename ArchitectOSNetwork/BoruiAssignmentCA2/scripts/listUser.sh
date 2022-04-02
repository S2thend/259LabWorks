#!/bin/bash

# ./listUser.sh [groupname]
getent group $1 | awk '{split($0,a,":"); print a[4]}'