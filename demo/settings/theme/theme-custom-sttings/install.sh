#!/usr/bin/env bash




##
## ## Disable Extension
##

gnome-extensions disable accent-gtk-theme@brgvos

gnome-extensions disable accent-icons-theme@brgvos

gnome-extensions disable accent-user-theme@brgvos




##
## ## Set Theme
##

gsettings set org.gnome.desktop.interface cursor-theme 'Fluent-dark-cursors'

gsettings set org.gnome.desktop.interface gtk-theme 'Fluent-round-teal-Dark'

gsettings set org.gnome.desktop.interface icon-theme 'Fluent-teal-dark'

gsettings set org.gnome.desktop.wm.preferences theme 'Fluent-round-teal-Dark'

gsettings set org.gnome.shell.extensions.user-theme name 'Fluent-round-teal-Dark'
