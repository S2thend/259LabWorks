#!/bin/bash

source=$(cat config/config.txt | sed -n '/^intranet:.*$/p' | tr -d '\r' | awk '{split($0,a,":"); print a[2]}')

dest=$(cat config/config.txt | sed -n '/^live:.*$/p' | tr -d '\r' | awk '{split($0,a,":"); print a[2]}')

sudo chmod -R 444 $source

sudo rsync -avz ${source}/ ${dest} --delete

sudo chmod -R u=rwX,g=rwX,o=rX $source
