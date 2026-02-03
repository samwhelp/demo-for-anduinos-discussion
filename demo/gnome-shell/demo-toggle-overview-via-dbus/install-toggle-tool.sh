#!/usr/bin/env bash


sudo install -Dm755 ./gnome-shell-toggle-overview.sh /usr/local/bin/gnome-shell-toggle-overview.sh
sudo install -Dm755 ./gnome-shell-toggle-application-overview.sh /usr/local/bin/gnome-shell-toggle-application-overview.sh


sudo install -Dm644 ./gnome-shell-toggle-overview.desktop /usr/local/share/applications/gnome-shell-toggle-overview.desktop
sudo install -Dm644 ./gnome-shell-toggle-application-overview.desktop /usr/local/share/applications/gnome-shell-toggle-application-overview.desktop




##
## ## Link
##
## * https://askubuntu.com/questions/1201849/invoking-gnome-show-applications-from-command-line
## * https://askubuntu.com/questions/1412130/dbus-calls-to-gnome-shell-dont-work-under-ubuntu-22-04
## * https://github.com/linushdot/unsafe-mode-menu
##
