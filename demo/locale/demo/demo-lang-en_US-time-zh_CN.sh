#!/usr/bin/env bash




##
## ## make sure /etc/default/locale: symbolic link to /etc/locale.conf
##

sudo rm -f /etc/default/locale

sudo ln -sf ../locale.conf /etc/default/locale




##
## ## locale-gen
##

sudo locale-gen --lang en_US zh_CN




##
## ## gsettings
##

gsettings set org.gnome.system.locale region "zh_CN.UTF-8"




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf > /dev/null 2>&1
LANG=en_US.UTF-8
LC_TIME=zh_CN.UTF-8
__EOF__




##
## ## remove ~/.pam_environment
##

rm -f "${HOME}/.pam_environment"
