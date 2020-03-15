FROM stanback/alpine-samba

COPY smb.conf /etc/samba/smb.conf
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]