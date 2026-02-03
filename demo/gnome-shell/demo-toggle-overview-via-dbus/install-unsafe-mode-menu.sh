#!/usr/bin/env bash




##
## ## install unsafe-mode-menu
##

git clone https://github.com/linushdot/unsafe-mode-menu.git

mkdir -p ~/.local/share/gnome-shell/extensions/

cp -rfT ./unsafe-mode-menu/unsafe-mode-menu@linushdot.local ~/.local/share/gnome-shell/extensions/unsafe-mode-menu@linushdot.local




##
## ## Logout
##

#gnome-session-quit




##
## ## Link
##
## * https://askubuntu.com/questions/1201849/invoking-gnome-show-applications-from-command-line
## * https://askubuntu.com/questions/1412130/dbus-calls-to-gnome-shell-dont-work-under-ubuntu-22-04
## * https://github.com/linushdot/unsafe-mode-menu
##
