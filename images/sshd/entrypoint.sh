#!/bin/sh

echo "Setting public keys: $SSHD_UPLOAD_PUBKEYS"
mkdir /etc/ssh/authorized_keys/
echo "$SSHD_UPLOAD_PUBKEYS" > /etc/ssh/authorized_keys/upload

exec /usr/sbin/sshd -D -e
