#!/usr/bin/env bash




##
## * https://github.com/zshzero/dracula-grub2
##




##
## ## Clean
##

rm -f "/tmp/dracula-grub2-master.tar.gz"
rm -rf "/tmp/dracula-grub2-master"




##
## ## Download
##

wget -c "https://github.com/zshzero/dracula-grub2/archive/refs/heads/master.tar.gz" -O "/tmp/dracula-grub2-master.tar.gz"




##
## ## Extract
##

tar xf "/tmp/dracula-grub2-master.tar.gz" -C "/tmp"




##
## ## Install
##

sudo mkdir -p "/usr/share/grub/themes"

sudo cp -rfT "/tmp/dracula-grub2-master" "/usr/share/grub/themes/grub-theme-dracula"




##
## ## Config
##

sudo mkdir -p "/etc/default/grub.d"

cat << __EOF__ | sudo tee "/etc/default/grub.d/theme.cfg" > /dev/null 2>&1
GRUB_THEME="/usr/share/grub/themes/grub-theme-dracula/theme.txt"
GRUB_BACKGROUND="/usr/share/grub/themes/grub-theme-dracula/background.png"
__EOF__




##
## ## Apply
##

sudo update-grub

#sudo grub-mkconfig -o /boot/grub/grub.cfg
