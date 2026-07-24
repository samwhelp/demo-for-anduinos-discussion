#!/usr/bin/env bash




##
## * https://github.com/obster-y/grub-theme-obs
##




##
## ## Clean
##

rm -f "/tmp/grub-theme-obs-master.tar.gz"
rm -rf "/tmp/grub-theme-obs-master"




##
## ## Download
##

wget -c "https://github.com/obster-y/grub-theme-obs/archive/refs/heads/master.tar.gz" -O "/tmp/grub-theme-obs-master.tar.gz"




##
## ## Extract
##

tar xf "/tmp/grub-theme-obs-master.tar.gz" -C "/tmp"




##
## ## Install
##

sudo mkdir -p "/usr/share/grub/themes"

sudo cp -rfT "/tmp/grub-theme-obs-master" "/usr/share/grub/themes/grub-theme-obs"




##
## ## Config
##

sudo mkdir -p "/etc/default/grub.d"

cat << __EOF__ | sudo tee "/etc/default/grub.d/theme.cfg" > /dev/null 2>&1
GRUB_THEME="/usr/share/grub/themes/grub-theme-obs/theme.txt"
GRUB_BACKGROUND="/usr/share/grub/themes/grub-theme-obs/backgrounds/wave.png"
__EOF__




##
## ## Apply
##

sudo update-grub

#sudo grub-mkconfig -o /boot/grub/grub.cfg
