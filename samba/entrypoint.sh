#!/bin/sh

adduser -s /sbin/nologin -h /home/samba -H -D $SMB_ADMIN_USER
(echo $SMB_ADMIN_PASS; echo $SMB_ADMIN_PASS) | smbpasswd -a $SMB_ADMIN_USER
adduser -s /sbin/nologin -h /home/samba -H -D $SMB_GUEST_USER
(echo $SMB_GUEST_PASS; echo $SMB_GUEST_PASS) | smbpasswd -a $SMB_GUEST_USER

sh -c "sed -i 's/admin_user/$SMB_ADMIN_USER/g' /etc/samba/smb.conf"
sh -c "sed -i 's/guest_user/$SMB_GUEST_USER/g' /etc/samba/smb.conf"

smbd --foreground --log-stdout < /dev/null