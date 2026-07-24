#!/usr/bin/env bash




##
## * https://github.com/Teraskull/bigsur-grub2-theme
##




##
## ## Clean
##

rm -f "/tmp/bigsur-grub2-theme-master.tar.gz"
rm -rf "/tmp/bigsur-grub2-theme-master"




##
## ## Download
##

wget -c "https://github.com/Teraskull/bigsur-grub2-theme/archive/refs/heads/master.tar.gz" -O "/tmp/bigsur-grub2-theme-master.tar.gz"




##
## ## Extract
##

tar xf "/tmp/bigsur-grub2-theme-master.tar.gz" -C "/tmp"




##
## ## Install
##

sudo mkdir -p "/usr/share/grub/themes"

sudo cp -rfT "/tmp/bigsur-grub2-theme-master/bigsur" "/usr/share/grub/themes/grub-theme-bigsur"




##
## ## Config
##

sudo mkdir -p "/etc/default/grub.d"

cat << __EOF__ | sudo tee "/etc/default/grub.d/theme.cfg" > /dev/null 2>&1
GRUB_THEME="/usr/share/grub/themes/grub-theme-bigsur/theme.txt"
GRUB_BACKGROUND="/usr/share/grub/themes/grub-theme-bigsur/background.png"
__EOF__




##
## ## Apply
##

sudo update-grub

#sudo grub-mkconfig -o /boot/grub/grub.cfg
