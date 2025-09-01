#!/usr/bin/env bash


##
## ## Download basilisk-20250703124711.linux-x86_64-gtk3.tar.xz
##

wget -c 'https://dl.basilisk-browser.org/basilisk-20250703124711.linux-x86_64-gtk3.tar.xz'




##
## ## EXtract basilisk-20250703124711.linux-x86_64-gtk3.tar.xz to ~/.local/share/basilisk
##

mkdir -p "${HOME}/.local/share"

tar xf basilisk-20250703124711.linux-x86_64-gtk3.tar.xz -C "${HOME}/.local/share"




##
## ## Create /usr/bin/basilisk soft link to ~/.local/share/basilisk/basilisk
##

sudo ln -sf "${HOME}/.local/share/basilisk/basilisk" "/usr/bin/basilisk"




##
## ## Create /usr/share/applications/basilisk.desktop
##

cat << __EOF__ | sudo tee /usr/share/applications/basilisk.desktop
[Desktop Entry]
Version=1.0
Name=Basilisk Web Browser
Comment=Browse the World Wide Web
Keywords=Internet;WWW;Browser;Web;Explorer
Exec=basilisk %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=basilisk
Categories=Network;WebBrowser;Internet
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;x-scheme-handler/chrome;video/webm;application/x-xpinstall;
StartupNotify=true
__EOF__

