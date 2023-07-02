#!/usr/bin/env sh
set -e

# read vars from environment
if [ -z "${RELAY_HOST}" ]; then
    echo "RELAY_HOST environment variable not found. Please set it before running this container."
    exit 1
fi
if [ -z "${RELAY_PORT}" ]; then
    echo "RELAY_PORT environment variable not found. Please set it before running this container."
    exit 1
fi
if [ -z "${USER}" ]; then
    echo "USER environment variable not found. Please set it before running this container."
    exit 1
fi
if [ -z "${PASSWORD}" ]; then
    echo "PASSWORD environment variable not found. Please set it before running this container."
    exit 1
fi

# replace the placeholders in the configuration files
sed -i "s/\${RELAY_HOST}/${RELAY_HOST}/g" /etc/postfix/main.cf
sed -i "s/\${RELAY_PORT}/${RELAY_PORT}/g" /etc/postfix/main.cf
sed -i "s/\${RELAY_HOST}/${RELAY_HOST}/g" /etc/postfix/sasl_passwd
sed -i "s/\${RELAY_PORT}/${RELAY_PORT}/g" /etc/postfix/sasl_passwd
sed -i "s/\${USER}/${USER}/g" /etc/postfix/sasl_passwd
sed -i "s/\${PASSWORD}/${PASSWORD}/g" /etc/postfix/sasl_passwd

# Prepare the password
/usr/sbin/postmap /etc/postfix/sasl_passwd
chown root:root /etc/postfix/sasl_passwd /etc/postfix/sasl_passwd.lmdb
chmod 0400 /etc/postfix/sasl_passwd /etc/postfix/sasl_passwd.lmdb

# Tie down permissions for postfix config files
chmod 0400 /etc/postfix/main.cf /etc/postfix/header_checks

# launch the processes supervisor
/usr/bin/supervisord -c /etc/supervisord.conf
