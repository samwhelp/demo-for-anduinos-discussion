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
## ## config ~/.pam_environment
##

cat << __EOF__ | tee "${HOME}/.pam_environment" > /dev/null 2>&1
LANG                 DEFAULT=en_US.UTF-8
LC_CTYPE             DEFAULT=en_AU.UTF-8
LC_NUMERIC           DEFAULT=en_AU.UTF-8
LC_TIME              DEFAULT=en_AU.UTF-8
LC_COLLATE           DEFAULT=en_AU.UTF-8
LC_MONETARY          DEFAULT=en_AU.UTF-8
LC_MESSAGES          DEFAULT=en_AU.UTF-8
LC_PAPER             DEFAULT=en_AU.UTF-8
LC_NAME              DEFAULT=en_AU.UTF-8
LC_ADDRESS           DEFAULT=en_AU.UTF-8
LC_TELEPHONE         DEFAULT=en_AU.UTF-8
LC_MEASUREMENT       DEFAULT=en_AU.UTF-8
LC_IDENTIFICATION    DEFAULT=en_AU.UTF-8
PAPERSIZE	     DEFAULT=a4
__EOF__

