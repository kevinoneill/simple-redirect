#!/bin/sh

if [ ! -n "${REDIRECT_SERVER}" ] ; then
    echo "Environment variable REDIRECT_SERVER is not set, exiting."
    exit 1
fi

envsubst '${REDIRECT_SERVER}' < "/etc/nginx/nginx-redirect.conf" > "/etc/nginx/nginx.conf"

nginx -g 'daemon off;'