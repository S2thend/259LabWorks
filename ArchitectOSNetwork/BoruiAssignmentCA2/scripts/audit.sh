sudo service auditd start
loc=$(cat config/config.txt | sed -n '/^intranet:.*$/p' | tr -d '\r' | awk '{split($0,a,":"); print a[2]}')/
sudo auditctl -w $loc -p rwxa
sudo ausearch -f $loc | aureport -f -i > config/AuditLog.txt