#!/usr/bin/env bash




##
## ## Model / Dash to Panel
##

mod_dash_to_panel_install () {

	sys_dash_to_panel_disable

}

sys_dash_to_panel_disable () {

	sys_dash_to_panel_disable_via_gext

	#sys_dash_to_panel_disable_via_gnome_extensions

}

sys_dash_to_panel_disable_via_gext () {

	gext disable "dash-to-panel@jderose9.github.com"

}

sys_dash_to_panel_disable_via_gnome_extensions () {

	gnome-extensions disable "dash-to-panel@jderose9.github.com"

}




##
## ## Portal
##

mod_master_dash_to_panel_install () {

	mod_dash_to_panel_install

}


##
## ## Main
##

__main__ () {

	mod_master_dash_to_panel_install

}

__main__
