

# demo-add-apt-source-from-anduinos




## Subject

* [Introduction](#introduction)
* [Usage](#usage)
* [Check](#check)
* [Howto](#howto)




## Introduction

The script create two files

* /usr/share/keyrings/anduinos-archive-keyring.gpg
* /etc/apt/sources.list.d/anduinos.sources




## Usage

How to download [add-apt-source-from-anduinos.sh](https://github.com/samwhelp/demo-for-anduinos-discussion/blob/main/demo/apt/demo-add-apt-source-from-anduinos/demo-start/add-apt-source-from-anduinos.sh) and run [it](https://raw.githubusercontent.com/samwhelp/demo-for-anduinos-discussion/refs/heads/main/demo/apt/demo-add-apt-source-from-anduinos/demo-start/add-apt-source-from-anduinos.sh).




## Usage / basic

download script

``` sh
wget -c 'https://raw.githubusercontent.com/samwhelp/demo-for-anduinos-discussion/refs/heads/main/demo/apt/demo-add-apt-source-from-anduinos/demo-start/add-apt-source-from-anduinos.sh'
```

chmod

``` sh
chmod 755 add-apt-source-from-anduinos.sh
```

run it

``` sh
./add-apt-source-from-anduinos.sh
```

then run

``` sh
sudo apt-get update
```

run to search package

``` sh
apt-cache search anduinos
```

run to install [anduinos-wallpapers](https://github.com/AiursoftWeb/AnduinOS-Packages/tree/master/anduinos-wallpapers)

``` sh
sudo apt-get install anduinos-wallpapers
```

run

``` sh
dpkg -L anduinos-wallpapers
```

show

```
/.
/etc
/etc/dconf
/etc/dconf/db
/etc/dconf/db/anduinos.d
/etc/dconf/db/anduinos.d/20-wallpapers.conf
/usr
/usr/share
/usr/share/backgrounds
/usr/share/backgrounds/11-dark.jpg
/usr/share/backgrounds/11-light.jpg
/usr/share/backgrounds/Floating-objects-dark.png
/usr/share/backgrounds/Floating-objects-light.jpg
/usr/share/backgrounds/Fluent-building-light.png
/usr/share/backgrounds/Fluent-building-night.png
/usr/share/backgrounds/aos-dark.jpg
/usr/share/backgrounds/aos-light.jpg
/usr/share/backgrounds/new_bubbles-dark.jpg
/usr/share/backgrounds/new_bubbles-light.jpg
/usr/share/backgrounds/new_mountain-dark.png
/usr/share/backgrounds/new_mountain-light.png
/usr/share/gnome-background-properties
/usr/share/gnome-background-properties/fluent.xml
```




## Usage / basic / choose ubuntu version

default is resolute, choose questing, and run it

``` sh
REF_TARGET_UBUNTU_VERSION_CODENAME=questing ./add-apt-source-from-anduinos.sh
```

then run

``` sh
sudo apt-get update
```




## Usage / advance / run one line

> run

``` sh
bash <(curl -L https://raw.githubusercontent.com/samwhelp/demo-for-anduinos-discussion/refs/heads/main/demo/apt/demo-add-apt-source-from-anduinos/demo-start/add-apt-source-from-anduinos.sh)
```


> or run

``` sh
bash <(wget -q https://raw.githubusercontent.com/samwhelp/demo-for-anduinos-discussion/refs/heads/main/demo/apt/demo-add-apt-source-from-anduinos/demo-start/add-apt-source-from-anduinos.sh -O - )
```


then run

``` sh
sudo apt-get update
```




## Usage / advance / run one line / choose ubuntu version

> run

``` sh
REF_TARGET_UBUNTU_VERSION_CODENAME=questing bash <(curl -L https://raw.githubusercontent.com/samwhelp/demo-for-anduinos-discussion/refs/heads/main/demo/apt/demo-add-apt-source-from-anduinos/demo-start/add-apt-source-from-anduinos.sh)
```


> or run

``` sh
REF_TARGET_UBUNTU_VERSION_CODENAME=questing bash <(wget -q https://raw.githubusercontent.com/samwhelp/demo-for-anduinos-discussion/refs/heads/main/demo/apt/demo-add-apt-source-from-anduinos/demo-start/add-apt-source-from-anduinos.sh -O - )
```


then run

``` sh
sudo apt-get update
```




## Check

Viwe File: /etc/apt/sources.list.d/anduinos.sources

run

``` sh
cat /etc/apt/sources.list.d/anduinos.sources
```

show

```
Types: deb
URIs: https://packages.anduinos.com/artifacts/anduinos/
Suites: resolute-addon
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/anduinos-archive-keyring.gpg
```




## Howto

### How to remove

just remove two files and run `sudo apt-get update`

``` sh
sudo rm -f /etc/apt/sources.list.d/anduinos.sources

sudo rm -f /usr/share/keyrings/anduinos-archive-keyring.gpg

sudo apt-get update

```




## Discussions

* [How to add apt sources from AnduinOS](https://github.com/Anduin2017/AnduinOS/discussions/354)
