#!/usr/bin/env bash


##
## ## hide `trash icon on desktop` via `gsettings`
##

#gsettings set org.gnome.shell.extensions.ding show-trash false




##
## ## hide `trash icon on desktop` via `dconf`
##

dconf write /org/gnome/shell/extensions/ding/show-trash false




##
## ## Link
##
## * https://github.com/Anduin2017/AnduinOS/discussions/277
##
