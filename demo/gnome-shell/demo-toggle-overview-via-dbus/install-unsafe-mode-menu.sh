#!/usr/bin/env bash



git clone https://github.com/linushdot/unsafe-mode-menu.git

cd unsafe-mode-menu

mkdir -p ~/.local/share/gnome-shell/extensions/

cp -r unsafe-mode-menu@linushdot.local ~/.local/share/gnome-shell/extensions/




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
