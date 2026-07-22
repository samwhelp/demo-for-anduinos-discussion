#!/usr/bin/env bash




##
## ## install language-pack
##

sudo apt-get install language-pack-gnome-ko -y




##
## ## make sure /etc/default/locale: symbolic link to /etc/locale.conf
##

sudo rm -f /etc/default/locale

sudo ln -sf ../locale.conf /etc/default/locale




##
## ## locale-gen
##

sudo locale-gen --lang en_US ko_KR




##
## ## gsettings
##

gsettings set org.gnome.system.locale region "ko_KR.UTF-8"




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf > /dev/null 2>&1
LANG=en_US.UTF-8
LC_CTYPE=ko_KR.UTF-8
LC_NUMERIC=ko_KR.UTF-8
LC_TIME=ko_KR.UTF-8
LC_COLLATE=ko_KR.UTF-8
LC_MONETARY=ko_KR.UTF-8
LC_MESSAGES=ko_KR.UTF-8
LC_PAPER=ko_KR.UTF-8
LC_NAME=ko_KR.UTF-8
LC_ADDRESS=ko_KR.UTF-8
LC_TELEPHONE=ko_KR.UTF-8
LC_MEASUREMENT=ko_KR.UTF-8
LC_IDENTIFICATION=ko_KR.UTF-8
__EOF__




##
## ## remove ~/.pam_environment
##

rm -f "${HOME}/.pam_environment"
