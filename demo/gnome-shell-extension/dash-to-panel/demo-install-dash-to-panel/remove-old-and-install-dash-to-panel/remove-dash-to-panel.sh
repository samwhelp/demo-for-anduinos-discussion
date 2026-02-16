#!/usr/bin/env bash




##
## ## Model / Dash to Panel
##

mod_dash_to_panel_remove_old () {

	sys_dash_to_panel_remove_old_at_global

	sys_dash_to_panel_remove_old_at_local

}

sys_dash_to_panel_remove_old_at_global () {

	echo
	echo sudo rm -rf '/usr/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com'
	echo
	sudo rm -rf '/usr/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com'

}

sys_dash_to_panel_remove_old_at_local () {

	echo
	echo rm -rf '~/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com'
	echo
	rm -rf '~/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com'

}




##
## ## Portal
##

mod_master_dash_to_panel_install () {

	mod_dash_to_panel_remove_old

}


##
## ## Main
##

__main__ () {

	mod_master_dash_to_panel_install

}

__main__
