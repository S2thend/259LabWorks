# Project Structure
```shell
ProjectRoot
├── config
│   ├── AuditLog.txt
│   ├── config.txt
│   ├── cron.txt
│   ├── menu.txt
│   └── top.log
├── main.sh
├── readme.md
└── scripts
    ├── addUser2Group.sh
    ├── audit.sh
    ├── backup.sh
    ├── healthLog.sh
    ├── listUser.sh
    └── update.sh

2 directories, 13 files
```

# main.sh
Main program.
Execute this script to enter the UI.

# addUser2Group.sh
Usage: addUser2Group.sh [username]
add user of username to group in config file.

# backup.sh 
Usage: backup.sh [Option]
Option: "live" or "intranet"

# config/menu.txt
UI framework file

# config/config.txt
Pls modify this file if you need to change default dirs and usergroups.
Example Content:
```
groupname:adm
intranet:/var/www/html/intranet
live:/var/www/html/live
backup:/home/backups
```