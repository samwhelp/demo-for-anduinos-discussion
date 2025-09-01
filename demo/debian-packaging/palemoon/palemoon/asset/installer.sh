#!/usr/bin/env bash


#set -e




##
## # Install palemoon
##
## * https://github.com/samwhelp/demo-for-anduinos-discussion/blob/main/demo/installer/palemoon/install.sh
##




##
## ## Main / Init
##

REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
REF_CMD_FILE_NAME="$(basename "$0")"




##
## ## Main / Args
##

DEFAULT_SRCDIR="${REF_BASE_DIR_PATH}/prj"
SRCDIR="${SRCDIR:=$DEFAULT_SRCDIR}"


DEFAULT_DESTDIR="${REF_BASE_DIR_PATH}/pkg"
DESTDIR="${DESTDIR:=$DEFAULT_DESTDIR}"




##
## ## Master / Util
##

util_copy_from_srcdir_to_desdir () {

	local src_dir_path="${1}"
	local des_dir_path="${2}"


	echo
	echo mkdir -p "${src_dir_path}"
	mkdir -p "${src_dir_path}"


	echo
	echo mkdir -p "${des_dir_path}"
	mkdir -p "${des_dir_path}"


	echo
	echo cp -rfT "${src_dir_path}" "${des_dir_path}"
	cp -rfT "${src_dir_path}" "${des_dir_path}"


	echo

	return 0

}




##
## ## Master / Model
##

mod_project_install_main () {

	local src_dir_path="${prjdir}"
	local des_dir_path="${pkgdir}/usr/share/palemoon"


	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

mod_project_install_bin () {

	local des_bin_dir_path="${pkgdir}/usr/bin"

	echo
	echo mkdir -p "${des_bin_dir_path}"
	mkdir -p "${des_bin_dir_path}"

	echo
	echo ln -sf "/usr/share/palemoon/palemoon" "${des_bin_dir_path}/palemoon"
	ln -sf "/usr/share/palemoon/palemoon" "${des_bin_dir_path}/palemoon"


	return 0
}

mod_project_install_desktop_entry () {

	local des_applications_dir_path="${pkgdir}/usr/share/applications"

	echo
	echo mkdir -p "${des_applications_dir_path}"
	mkdir -p "${des_applications_dir_path}"




cat << __EOF__ | tee "${des_applications_dir_path}/palemoon.desktop"
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




	return 0
}


##
## ## Model / Start
##

model_start () {


	echo
	echo "P: palemoon install"

	echo
	echo "Shell: DESTDIR=${DESTDIR}"

	prjdir="${SRCDIR}"

	pkgdir="${DESTDIR}"


	echo
	echo mkdir -p "${prjdir}"
	mkdir -p "${prjdir}"


	echo
	echo mkdir -p "${pkgdir}"
	mkdir -p "${pkgdir}"




	mod_project_install_main

	mod_project_install_bin

	mod_project_install_desktop_entry




	echo

	return 0

}




##
## ## Main / Start
##

__main__ () {

	model_start "${@}"

}

__main__ "${@}"
