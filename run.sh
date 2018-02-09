#!/bin/sh
exec /usr/bin/salt-master --log-level=${LOG_LEVEL:-"error"}
