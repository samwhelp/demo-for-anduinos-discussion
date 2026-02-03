#!/usr/bin/env bash




##
## ## enable unsafe-mode-menu
##

gnome-extensions enable unsafe-mode-menu@linushdot.local




##
## ## enable-on-startup
##

dconf write /org/gnome/shell/extensions/unsafe-mode-menu/enable-on-startup true




##
## ## unsafe mode
##

dconf write /org/gnome/shell/extensions/unsafe-mode-menu/state true


##
## safe mode
##

#dconf write /org/gnome/shell/extensions/unsafe-mode-menu/state false




##
## read mode
##

dconf read /org/gnome/shell/extensions/unsafe-mode-menu/state




##
## ## Link
##
## * https://askubuntu.com/questions/1201849/invoking-gnome-show-applications-from-command-line
## * https://askubuntu.com/questions/1412130/dbus-calls-to-gnome-shell-dont-work-under-ubuntu-22-04
## * https://github.com/linushdot/unsafe-mode-menu
##
