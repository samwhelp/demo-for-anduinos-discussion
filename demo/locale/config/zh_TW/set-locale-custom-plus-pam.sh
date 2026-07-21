#!/usr/bin/env bash




##
## ## make sure /etc/default/locale: symbolic link to /etc/locale.conf
##

sudo rm -f /etc/default/locale

sudo ln -sf ../locale.conf /etc/default/locale




##
## ## locale-gen
##

sudo locale-gen --lang zh_TW




##
## ## gsettings
##

gsettings set org.gnome.system.locale region "zh_TW.UTF-8"




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf > /dev/null 2>&1
LANG=zh_TW.UTF-8
LC_CTYPE=zh_TW.UTF-8
LC_NUMERIC=zh_TW.UTF-8
LC_TIME=zh_TW.UTF-8
LC_COLLATE=zh_TW.UTF-8
LC_MONETARY=zh_TW.UTF-8
LC_MESSAGES=zh_TW.UTF-8
LC_PAPER=zh_TW.UTF-8
LC_NAME=zh_TW.UTF-8
LC_ADDRESS=zh_TW.UTF-8
LC_TELEPHONE=zh_TW.UTF-8
LC_MEASUREMENT=zh_TW.UTF-8
LC_IDENTIFICATION=zh_TW.UTF-8
__EOF__




##
## ## config ~/.pam_environment
##

cat << __EOF__ | tee "${HOME}/.pam_environment" > /dev/null 2>&1
LANG                 DEFAULT=zh_TW.UTF-8
LC_CTYPE             DEFAULT=zh_TW.UTF-8
LC_NUMERIC           DEFAULT=zh_TW.UTF-8
LC_TIME              DEFAULT=zh_TW.UTF-8
LC_COLLATE           DEFAULT=zh_TW.UTF-8
LC_MONETARY          DEFAULT=zh_TW.UTF-8
LC_MESSAGES          DEFAULT=zh_TW.UTF-8
LC_PAPER             DEFAULT=zh_TW.UTF-8
LC_NAME              DEFAULT=zh_TW.UTF-8
LC_ADDRESS           DEFAULT=zh_TW.UTF-8
LC_TELEPHONE         DEFAULT=zh_TW.UTF-8
LC_MEASUREMENT       DEFAULT=zh_TW.UTF-8
LC_IDENTIFICATION    DEFAULT=zh_TW.UTF-8
__EOF__

