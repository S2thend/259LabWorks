#!/bin/bash

service cron start
echo -e "00 21 * * * .$(pwd)/backup.sh live\n15 21 * * * .$(pwd)/backup.sh\n30 21 * * * .$(pwd)/healthLog.sh" > config/cron.txt
crontab config/cron.txt

opt=""
user=""
test="groupname"
cat config/menu.txt

while test "$opt" != "q"
do
    read -p "Enter your choice: " opt
    case $opt in
        "1")
            sh scripts/listUser.sh $(cat config/config.txt | sed -n '/^groupname:.*$/p' | tr -d '\r' | awk '{split($0,a,":"); print a[2]}')
            ;;
        "2")
            read -p "Enter user name: " user
            sh scripts/addUser2Group.sh $user
            ;;
        "3")
            sh scripts/backup.sh intranet
            ;;
        "4")
            sh scripts/backup.sh live
            ;;
        "5")
            sh scripts/update.sh
            ;;
        "6")
            sh scripts/audit.sh
            ;;
        "7")
            sh scripts/healthLog.sh
            cat config/top.log
            ;;
        *)
            echo "not in list"
            ;;
    esac
    read -p "Any key to continue...: " tmp
    clear
    cat config/menu.txt
done
            
