#!/usr/bin/env bash




##
## ## Note
##

##
## This Script create two files
##
## * /usr/share/keyrings/anduinos-archive-keyring.gpg
## * /etc/apt/sources.list.d/anduinos.sources
##




##
## ## Option
##




##
## ## Option / Ubuntu
##

## This is the target Ubuntu version code name for the build.
## It should match the Ubuntu version you are building against.
## For example, if you are building against Ubuntu 22.04 LTS, this should be "jammy".
## If you are building against Ubuntu 24.04 LTS, this should be "noble".
## If you are building against Ubuntu 24.10, this should be "oracular".
## If you are building against Ubuntu 25.04, this should be "plucky".
## If you are building against Ubuntu 25.10, this should be "questing".
## If you are building against Ubuntu 26.04, this should be "resolute".
## Can be: jammy noble oracular plucky questing resolute
REF_TARGET_UBUNTU_VERSION_CODENAME="resolute"




##
## ## Option / Apkg
##

## APKG server URL for AnduinOS-branded overlay packages (dev: apkg-dev.aiursoft.com).
REF_APKG_SERVER_URL="https://packages.anduinos.com"




##
## ## Option / Certificate
##

## GPG certificate name on the APKG server (used to download and verify the repo).
## The cert is fetched from: ${REF_APKG_SERVER_URL}/artifacts/certs/${REF_APKG_CERTIFICATE_NAME}
REF_APKG_CERTIFICATE_NAME="anduinos"
REF_APKG_CERTIFICATE_URL="${REF_APKG_SERVER_URL}/artifacts/certs/${REF_APKG_CERTIFICATE_NAME}"




##
## ## Option / Keyring
##

REF_AOS_KEYRINGS_DIR_PATH="/usr/share/keyrings"

REF_AOS_KEYRING_FILE_NAME="anduinos-archive-keyring.gpg"
REF_AOS_KEYRING_FILE_PATH="${REF_AOS_KEYRINGS_DIR_PATH}/${REF_AOS_KEYRING_FILE_NAME}"




##
## ## Option / Keyring
##

REF_AOS_APT_SOURCE_LIST_PART_DIR_PATH="/etc/apt/sources.list.d"

REF_AOS_APT_SOURCE_LIST_FILE_PATH="${REF_AOS_APT_SOURCE_LIST_PART_DIR_PATH}/anduinos.sources"




##
## ## Prepare
##

sye_prepare_package () {

	sudo apt-get install curl

}

mod_prepare () {

	echo
	echo
	echo "##"
	echo "## ## mod_prepare"
	echo "##"
	echo

	sye_prepare_package

}




##
## ## Model / Keyring
##

sys_aos_keyrings_dir_create () {

	local keyrings_dir_path="${REF_AOS_KEYRINGS_DIR_PATH}"

	sudo mkdir -p "${keyrings_dir_path}"

}

sys_aos_keyring_file_create () {

	##
	## ## https://github.com/AiursoftWeb/AnduinOS-2/blob/master/build.sh#L103
	##

	local certificate_url="${REF_APKG_CERTIFICATE_URL}"
	local keyring_file_path="${REF_AOS_KEYRING_FILE_PATH}"

	curl -sL "${certificate_url}" | sed '1s/^\xEF\xBB\xBF//' | gpg --dearmor | sudo tee "${keyring_file_path}" > /dev/null

	echo
	echo "Create File: ${keyring_file_path}"

}

mod_aos_keyring_create () {

	echo
	echo
	echo "##"
	echo "## ## mod_aos_keyring_create"
	echo "##"
	echo

	sys_aos_keyrings_dir_create

	sys_aos_keyring_file_create

}




##
## ## Model / Apt Source
##

sys_aos_apt_source_list_create () {

	local apkg_server_url="${REF_APKG_SERVER_URL}"
	local ubuntu_version_codename="${REF_TARGET_UBUNTU_VERSION_CODENAME}"
	local aos_keyring_file_path="${REF_AOS_KEYRING_FILE_PATH}"
	local aos_apt_source_list_file_path="${REF_AOS_APT_SOURCE_LIST_FILE_PATH}"
	local aos_apt_source_list_part_dir_path="${REF_AOS_APT_SOURCE_LIST_PART_DIR_PATH}"

	sudo mkdir -p "${aos_apt_source_list_part_dir_path}"

	sudo tee "${aos_apt_source_list_file_path}" > /dev/null << __EOF__
Types: deb
URIs: ${apkg_server_url}/artifacts/anduinos/
Suites: ${ubuntu_version_codename}-addon
Components: main
Architectures: amd64
Signed-By: ${aos_keyring_file_path}
__EOF__

	echo
	echo "Create File: ${aos_apt_source_list_file_path}"

}

mod_aos_apt_source_list_create () {

	echo
	echo
	echo "##"
	echo "## ## mod_aos_apt_source_list_create"
	echo "##"
	echo

	sys_aos_apt_source_list_create

}




##
## ## Model / Tips
##

sys_tips () {

cat << __EOF__

##############################
##
## ## Next Steps:
##
##############################

Next, you can try the following actions.

### Update

... sh
sudo apt-get update
...


### Search

... sh
apt-cache search anduinos
...


### Install

... sh
sudo apt-get install anduinos-wallpapers
...


__EOF__

}

mod_tips () {

	echo
	echo
	echo "##"
	echo "## ## mod_tips"
	echo "##"
	echo

	sys_tips

}





##
## ## Portal
##

model_add_apt_source_from_anduinos () {

	mod_prepare

	mod_aos_keyring_create

	mod_aos_apt_source_list_create

	mod_tips

}



##
## ## Main
##

__main__ () {

	model_add_apt_source_from_anduinos

}

__main__
