#!/usr/bin/env bash




##
## ## install language-pack
##

sudo apt-get install language-pack-gnome-zh-hant -y




##
## ## make sure /etc/default/locale: symbolic link to /etc/locale.conf
##

sudo rm -f /etc/default/locale

sudo ln -sf ../locale.conf /etc/default/locale




##
## ## locale-gen
##

sudo locale-gen --lang en_US zh_HK




##
## ## gsettings
##

gsettings set org.gnome.system.locale region "zh_HK.UTF-8"




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf > /dev/null 2>&1
LANG=en_US.UTF-8
LC_CTYPE=zh_HK.UTF-8
LC_NUMERIC=zh_HK.UTF-8
LC_TIME=zh_HK.UTF-8
LC_COLLATE=zh_HK.UTF-8
LC_MONETARY=zh_HK.UTF-8
LC_MESSAGES=zh_HK.UTF-8
LC_PAPER=zh_HK.UTF-8
LC_NAME=zh_HK.UTF-8
LC_ADDRESS=zh_HK.UTF-8
LC_TELEPHONE=zh_HK.UTF-8
LC_MEASUREMENT=zh_HK.UTF-8
LC_IDENTIFICATION=zh_HK.UTF-8
__EOF__




##
## ## remove ~/.pam_environment
##

rm -f "${HOME}/.pam_environment"
