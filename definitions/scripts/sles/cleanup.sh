#!/bin/bash -eux

rm /etc/udev/rules.d/70-persistent*
cat /dev/null > /var/log/audit/audit.log
cat /dev/null > /var/log/wtmp

/usr/sbin/logrotate -f /etc/logrotate.conf
echo "Removing host keys"
rm -f /etc/ssh/*key*
