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
## ## gsettings
##

gsettings set org.gnome.system.locale region "en_AU.UTF-8"




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf > /dev/null 2>&1
LANG=en_US.UTF-8
LC_CTYPE=en_AU.UTF-8
LC_NUMERIC=en_AU.UTF-8
LC_TIME=en_AU.UTF-8
LC_COLLATE=en_AU.UTF-8
LC_MONETARY=en_AU.UTF-8
LC_MESSAGES=en_AU.UTF-8
LC_PAPER=en_AU.UTF-8
LC_NAME=en_AU.UTF-8
LC_ADDRESS=en_AU.UTF-8
LC_TELEPHONE=en_AU.UTF-8
LC_MEASUREMENT=en_AU.UTF-8
LC_IDENTIFICATION=en_AU.UTF-8
__EOF__




##
## ## remove ~/.pam_environment
##

rm -f "${HOME}/.pam_environment"
