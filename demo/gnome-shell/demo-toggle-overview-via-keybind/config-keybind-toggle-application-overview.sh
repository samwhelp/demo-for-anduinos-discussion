#!/usr/bin/env bash


##
## ## keybind `Alt + F3`` to trigger `Toggle Application View`.
##

#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Alt>F3']"




##
## ## keybind `Super + grave`` to trigger `Toggle Application View`.
##

#gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave']"




##
## ## press `Super + grave` or press `Alt + F3` to trigger `Toggle Application View`.
##

gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave', '<Alt>F3']"
