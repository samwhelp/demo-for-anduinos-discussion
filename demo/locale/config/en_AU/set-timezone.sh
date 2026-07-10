#!/usr/bin/env bash




##
## ## set timezone
##

sudo rm -f /etc/localtime

sudo ln -sf /usr/share/zoneinfo/Australia/Perth /etc/localtime
