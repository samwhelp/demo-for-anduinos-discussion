#!/usr/bin/env bash




##
## ## make sure /etc/default/locale: symbolic link to /etc/locale.conf
##

sudo rm -f /etc/default/locale

sudo ln -sf ../locale.conf /etc/default/locale




##
## ## locale-gen
##

sudo locale-gen --lang en_US en_AU




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf
LANG=en_US.UTF-8
LC_NUMERIC="en_AU.UTF-8"
LC_TIME="en_AU.UTF-8"
LC_MONETARY="en_AU.UTF-8"
LC_PAPER="en_AU.UTF-8"
LC_MEASUREMENT="en_AU.UTF-8"
__EOF__
