#!/bin/sh
exec salt-api --daemon
exec /usr/bin/salt-master --log-level=${LOG_LEVEL:-"error"}
