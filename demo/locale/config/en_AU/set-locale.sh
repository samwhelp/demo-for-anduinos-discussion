#!/usr/bin/env bash




##
## ## make sure /etc/default/locale: symbolic link to /etc/locale.conf
##

sudo rm -f /etc/default/locale

sudo ln -sf ../locale.conf /etc/default/locale




##
## ## locale-gen
##

sudo locale-gen --lang en_AU




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf
LANG=en_AU.UTF-8
__EOF__
