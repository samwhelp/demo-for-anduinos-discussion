#!/usr/bin/env bash


cat << __EOF__ > ~/.local/share/applications/trash-can.desktop
[Desktop Entry]
Type=Application
Name=Trash
Comment=Open the Trash
Icon=user-trash-full
Exec=nautilus trash:///
Categories=Utility;
Terminal=false
StartupNotify=true
__EOF__




##
## ## Link
##
## * https://github.com/Anduin2017/AnduinOS/discussions/277
##
