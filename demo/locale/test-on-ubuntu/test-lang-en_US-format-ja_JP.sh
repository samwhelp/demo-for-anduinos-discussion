#!/usr/bin/env bash




##
## ## install language-pack
##

sudo apt-get install language-pack-gnome-ja -y




##
## ## make sure /etc/default/locale: symbolic link to /etc/locale.conf
##

sudo rm -f /etc/default/locale

sudo ln -sf ../locale.conf /etc/default/locale




##
## ## locale-gen
##

sudo locale-gen --lang en_US ja_JP




##
## ## gsettings
##

gsettings set org.gnome.system.locale region "ja_JP.UTF-8"




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf > /dev/null 2>&1
LANG=en_US.UTF-8
LC_CTYPE=ja_JP.UTF-8
LC_NUMERIC=ja_JP.UTF-8
LC_TIME=ja_JP.UTF-8
LC_COLLATE=ja_JP.UTF-8
LC_MONETARY=ja_JP.UTF-8
LC_MESSAGES=ja_JP.UTF-8
LC_PAPER=ja_JP.UTF-8
LC_NAME=ja_JP.UTF-8
LC_ADDRESS=ja_JP.UTF-8
LC_TELEPHONE=ja_JP.UTF-8
LC_MEASUREMENT=ja_JP.UTF-8
LC_IDENTIFICATION=ja_JP.UTF-8
__EOF__




##
## ## remove ~/.pam_environment
##

rm -f "${HOME}/.pam_environment"
