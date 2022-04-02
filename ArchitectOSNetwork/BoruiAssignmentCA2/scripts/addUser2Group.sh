#!/bin/bash

groupname=$(cat config/config.txt | sed -n '/^groupname:.*$/p' | tr -d '\r' | awk '{split($0,a,":"); print a[2]}')
sudo usermod -a -G $groupname $1