#!/bin/bash

overview_status=$(gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/Shell --method org.gnome.Shell.Eval 'Main.overview.visible')

#echo "${overview_status}"


if [ "${overview_status}" = "(true, 'false')" ]; then
	#dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'Main.shellDBusService.ShowApplications()'
	dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'Main.overview.showApps()'
else
	dbus-send --session --type=method_call --dest=org.gnome.Shell /org/gnome/Shell org.gnome.Shell.Eval string:'Main.overview.hide()'
fi




##
## ## Link
##
## * https://askubuntu.com/questions/1201849/invoking-gnome-show-applications-from-command-line
## * https://askubuntu.com/questions/1412130/dbus-calls-to-gnome-shell-dont-work-under-ubuntu-22-04
## * https://github.com/linushdot/unsafe-mode-menu
##
