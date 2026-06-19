#!/usr/bin/env bash




##
## ## Create deb control file
##

mkdir -p demo/DEBIAN

cat > demo/DEBIAN/control << __EOF__
Package: demo
Version: 0.1
Architecture: all
Description: This is a test package.
Maintainer: developer <developer@home.heaven>
__EOF__




##
## ## Download schema
##

mkdir -p demo/usr/share/glib-2.0/schemas

## https://github.com/home-sweet-gnome/dash-to-panel/blob/master/schemas/org.gnome.shell.extensions.dash-to-panel.gschema.xml
wget -c https://raw.githubusercontent.com/home-sweet-gnome/dash-to-panel/refs/heads/master/schemas/org.gnome.shell.extensions.dash-to-panel.gschema.xml -O demo/usr/share/glib-2.0/schemas/org.gnome.shell.extensions.dash-to-panel.gschema.xml




##
## ## Packaging
##

dpkg-deb --root-owner-group --build demo
