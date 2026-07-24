#!/usr/bin/env bash




##
## * https://github.com/martyr-deepin/deepin-grub2-themes
##




##
## ## Clean
##

rm -f "/tmp/deepin-grub2-themes-master.tar.gz"
rm -rf "/tmp/deepin-grub2-themes-master"




##
## ## Download
##

wget -c "https://github.com/martyr-deepin/deepin-grub2-themes/archive/refs/heads/master.tar.gz" -O "/tmp/deepin-grub2-themes-master.tar.gz"




##
## ## Extract
##

tar xf "/tmp/deepin-grub2-themes-master.tar.gz" -C "/tmp"




##
## ## Install
##

sudo mkdir -p "/usr/share/grub/themes"

sudo cp -rfT "/tmp/deepin-grub2-themes-master/themes/deepin" "/usr/share/grub/themes/grub-theme-deepin"




##
## ## Config
##

sudo mkdir -p "/etc/default/grub.d"

cat << __EOF__ | sudo tee "/etc/default/grub.d/theme.cfg" > /dev/null 2>&1
GRUB_THEME="/usr/share/grub/themes/grub-theme-deepin/theme.txt"
GRUB_BACKGROUND="/usr/share/grub/themes/grub-theme-deepin/background.png"
__EOF__




##
## ## Apply
##

sudo update-grub

#sudo grub-mkconfig -o /boot/grub/grub.cfg
