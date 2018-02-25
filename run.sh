#!/bin/sh
adduser $SALT_USER
echo "$SALT_USER:$SALT_PASSWORD" |chpasswd

salt-api --daemon
exec /usr/bin/salt-master --log-level=${LOG_LEVEL:-"error"}
