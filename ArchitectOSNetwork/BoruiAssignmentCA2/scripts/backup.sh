#!/bin/bash

source=$(cat config/config.txt | sed -n '/^intranet:.*$/p' | tr -d '\r' | awk '{split($0,a,":"); print a[2]}')

backup=$(cat config/config.txt | sed -n '/^backup:.*$/p' | tr -d '\r' | awk '{split($0,a,":"); print a[2]}')

if test "$1"="live"; then
    source=$(cat config/config.txt | sed -n '/^live:.*$/p' | tr -d '\r' | awk '{split($0,a,":"); print a[2]}')
fi

sudo chmod -R 444 $source

echo $1

sudo zip -r ${backup}/$1$(date +%F).zip ${source}  

sudo chmod -R u=rwX,g=rwX,o=rX $source

