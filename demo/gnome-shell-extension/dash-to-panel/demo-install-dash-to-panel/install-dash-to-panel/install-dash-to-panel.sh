#!/usr/bin/env bash




##
## ## Model / Pipx
##

mod_pipx_install () {

	sys_pipx_install

}

sys_pipx_install () {

	sudo apt-get install pipx

}




##
## ## Model / Gext
##

mod_gext_install () {

	sys_gext_install

}

sys_gext_install () {

	sudo pipx install gnome-extensions-cli --global

}




##
## ## Model / Dash to Panel
##

mod_dash_to_panel_install () {

	sys_dash_to_panel_install

	sys_dash_to_panel_config

	sys_dash_to_panel_enable

}

sys_dash_to_panel_install () {

	gext install "dash-to-panel@jderose9.github.com"

}

sys_dash_to_panel_enable () {

	gext enable "dash-to-panel@jderose9.github.com"

}

sys_dash_to_panel_config () {

dconf load / << __EOF__


[org/gnome/shell/extensions/dash-to-panel]
animate-appicon-hover-animation-extent={'RIPPLE': 4, 'PLANK': 4, 'SIMPLE': 1}
click-action='CYCLE-MIN'
dot-position='BOTTOM'
group-apps=true
hotkeys-overlay-combo='TEMPORARILY'
intellihide=false
isolate-workspaces=true
panel-anchors='{"AUO-0x00000000":"MIDDLE","unknown-unknown":"MIDDLE"}'
panel-element-positions='{"AUO-0x00000000":[{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"taskbar","visible":true,"position":"centerMonitor"},{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}],"unknown-unknown":[{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"taskbar","visible":true,"position":"centerMonitor"},{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}'
panel-lengths='{}'
panel-positions='{}'
panel-sizes='{}'
prefs-opened=false
scroll-icon-action='CYCLE_WINDOWS'
scroll-panel-action='SWITCH_WORKSPACE'
shortcut=['<Super>0']
shortcut-text='<Super>0'
show-window-previews=false
taskbar-locked=false
window-preview-title-position='TOP'


__EOF__

}




##
## ## Portal
##

mod_master_dash_to_panel_install () {

	mod_pipx_install

	mod_gext_install

	mod_dash_to_panel_install

}


##
## ## Main
##

__main__ () {

	mod_master_dash_to_panel_install

}

__main__
