#!/usr/bin/env bash




##
## ## Download palemoon-33.8.2.linux-x86_64-gtk3.tar.xz
##

wget -c 'https://rm-us.palemoon.org/release/palemoon-33.8.2.linux-x86_64-gtk3.tar.xz'




##
## ## EXtract palemoon-33.8.2.linux-x86_64-gtk3.tar.xz to ~/.local/share/palemoon
##

mkdir -p "${HOME}/.local/share"

tar xf palemoon-33.8.2.linux-x86_64-gtk3.tar.xz -C "${HOME}/.local/share"




##
## ## Create /usr/bin/palemoon soft link to ~/.local/share/palemoon/palemoon
##

sudo ln -sf "${HOME}/.local/share/palemoon/palemoon" "/usr/bin/palemoon"




##
## ## Create /usr/share/applications/palemoon.desktop
##

cat << __EOF__ | sudo tee /usr/share/applications/palemoon.desktop
[Desktop Entry]
Version=1.0
Name=Pale Moon Web Browser
Comment=Browse the World Wide Web
Keywords=Internet;WWW;Browser;Web;Explorer
Exec=palemoon %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=palemoon
Categories=Network;WebBrowser;Internet
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;x-scheme-handler/chrome;video/webm;application/x-xpinstall;
StartupNotify=true
__EOF__

