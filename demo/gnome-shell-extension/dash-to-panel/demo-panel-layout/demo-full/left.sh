

sys_gnome_shell_extensions_config_for_dash_to_panel () {

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
panel-element-positions='{"AUO-0x00000000":[{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"centered"},{"element":"showAppsButton","visible":false,"position":"stackedBR"},{"element":"activitiesButton","visible":false,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}],"unknown-unknown":[{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"centered"},{"element":"showAppsButton","visible":false,"position":"stackedBR"},{"element":"activitiesButton","visible":false,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}'
panel-lengths='{}'
panel-positions='{}'
panel-sizes='{}'
prefs-opened=false
scroll-icon-action='CYCLE_WINDOWS'
scroll-panel-action='SWITCH_WORKSPACE'
shortcut=['<Super>0']
shortcut-text='<Super>0'
show-window-previews=false
stockgs-keep-dash=false
stockgs-keep-top-panel=false
taskbar-locked=false
window-preview-title-position='TOP'


__EOF__

}

sys_gnome_shell_extensions_config_for_arcmenu () {

dconf load / << __EOF__


[org/gnome/shell/extensions/apps-menu]
apps-menu-toggle-menu=['<Alt>F3']


[org/gnome/shell/extensions/arcmenu]
activate-on-hover=true
arcmenu-hotkey=['<Alt>F1']
arcmenu-hotkey-overlay-key-enabled=false
enable-horizontal-flip=true
force-menu-location='Off'
hide-overview-on-startup=false
hotkey-open-primary-monitor=false
#menu-button-icon='start-here'
menu-button-icon-size=32
menu-button-padding=6
menu-item-grid-icon-size='Default'
menu-item-icon-size='Large'
menu-layout='11'
override-menu-theme=false
position-in-panel='Left'
prefs-visible-page=0
searchbar-default-top-location='Bottom'
show-activities-button=true
vert-separator=true


__EOF__

}




sys_gnome_shell_extensions_config_for_dash_to_panel
sys_gnome_shell_extensions_config_for_arcmenu
