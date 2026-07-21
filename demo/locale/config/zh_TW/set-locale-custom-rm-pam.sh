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
## ## remove ~/.pam_environment
##

rm -f "${HOME}/.pam_environment"
