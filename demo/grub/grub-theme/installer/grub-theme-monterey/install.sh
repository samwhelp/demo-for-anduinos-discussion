#!/usr/bin/env bash




##
## * https://github.com/sandesh236/monterey-grub-theme
##




##
## ## Clean
##

rm -f "/tmp/monterey-grub-theme-main.tar.gz"
rm -rf "/tmp/monterey-grub-theme-main"




##
## ## Download
##

wget -c "https://github.com/sandesh236/monterey-grub-theme/archive/refs/heads/main.tar.gz" -O "/tmp/monterey-grub-theme-main.tar.gz"




##
## ## Extract
##

tar xf "/tmp/monterey-grub-theme-main.tar.gz" -C "/tmp"




##
## ## Install
##

sudo mkdir -p "/usr/share/grub/themes"

sudo cp -rfT "/tmp/monterey-grub-theme-main/monterey-grub-theme" "/usr/share/grub/themes/grub-theme-monterey"




##
## ## Config
##

sudo mkdir -p "/etc/default/grub.d"

cat << __EOF__ | sudo tee "/etc/default/grub.d/theme.cfg" > /dev/null 2>&1
GRUB_THEME="/usr/share/grub/themes/grub-theme-monterey/theme.txt"
GRUB_BACKGROUND="/usr/share/grub/themes/grub-theme-monterey/background.png"
__EOF__




##
## ## Apply
##

sudo update-grub

#sudo grub-mkconfig -o /boot/grub/grub.cfg
