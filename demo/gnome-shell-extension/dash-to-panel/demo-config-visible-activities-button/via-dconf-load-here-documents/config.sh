#!/usr/bin/env bash


dconf load / << __EOF__
[org/gnome/shell/extensions/arcmenu]
show-activities-button=true

[org/gnome/shell/extensions/dash-to-panel]
panel-element-positions='{"AUO-0x00000000":[{"element":"activitiesButton","visible":true,"position":"stackedTL"},{"element":"showAppsButton","visible":true,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"taskbar","visible":true,"position":"centerMonitor"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}],"unknown-unknown":[{"element":"activitiesButton","visible":true,"position":"stackedTL"},{"element":"showAppsButton","visible":true,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"taskbar","visible":true,"position":"centerMonitor"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}'
__EOF__
