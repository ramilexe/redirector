#!/bin/sh


sed -i "s@%url%@${REDIRECT_URL}@" /etc/nginx/conf.d/default.conf
exec "$@"
