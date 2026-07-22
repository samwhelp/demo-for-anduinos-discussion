#!/usr/bin/env bash




##
## ## install language-pack
##

sudo apt-get install language-pack-gnome-en -y




##
## ## make sure /etc/default/locale: symbolic link to /etc/locale.conf
##

sudo rm -f /etc/default/locale

sudo ln -sf ../locale.conf /etc/default/locale




##
## ## locale-gen
##

sudo locale-gen --lang en_US




##
## ## gsettings
##

gsettings set org.gnome.system.locale region "en_US.UTF-8"




##
## ## config /etc/locale.conf
##

cat << __EOF__ | sudo tee /etc/locale.conf > /dev/null 2>&1
LANG=en_US.UTF-8
LC_CTYPE=en_US.UTF-8
LC_NUMERIC=en_US.UTF-8
LC_TIME=en_US.UTF-8
LC_COLLATE=en_US.UTF-8
LC_MONETARY=en_US.UTF-8
LC_MESSAGES=en_US.UTF-8
LC_PAPER=en_US.UTF-8
LC_NAME=en_US.UTF-8
LC_ADDRESS=en_US.UTF-8
LC_TELEPHONE=en_US.UTF-8
LC_MEASUREMENT=en_US.UTF-8
LC_IDENTIFICATION=en_US.UTF-8
__EOF__




##
## ## remove ~/.pam_environment
##

rm -f "${HOME}/.pam_environment"
