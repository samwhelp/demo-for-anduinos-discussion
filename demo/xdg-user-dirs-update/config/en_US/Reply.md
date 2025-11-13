

# Reply

我安裝的是英文版，我提供我的「[~/.config/user-dirs.dirs](https://github.com/samwhelp/demo-for-anduinos-discussion/blob/main/demo/xdg-user-dirs-update/config/en_US/user-dirs.dirs)」給您參考。


您可以在您安裝好的系統，編輯「[~/.config/user-dirs.dirs](https://github.com/samwhelp/demo-for-anduinos-discussion/blob/main/demo/xdg-user-dirs-update/config/en_US/user-dirs.dirs)」這個檔案，內容如下


``` sh
# This file is written by xdg-user-dirs-update
# If you want to change or add directories, just edit the line you're
# interested in. All local changes will be retained on the next run.
# Format is XDG_xxx_DIR="$HOME/yyy", where yyy is a shell-escaped
# homedir-relative path, or XDG_xxx_DIR="/yyy", where /yyy is an
# absolute path. No other format is supported.
#
XDG_DESKTOP_DIR="$HOME/Desktop"
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_TEMPLATES_DIR="$HOME/Templates"
XDG_PUBLICSHARE_DIR="$HOME/Public"
XDG_DOCUMENTS_DIR="$HOME/Documents"
XDG_MUSIC_DIR="$HOME/Music"
XDG_PICTURES_DIR="$HOME/Pictures"
XDG_VIDEOS_DIR="$HOME/Videos"
```

然後執行下面的指令，應該會根據上面的設定，產生相對應的資料夾。

``` sh
xdg-user-dirs-update
```

重新登出系統，然後再登入，接著開啟「檔案管理器(Nautilus)」，應該就可以看到您原本想要的效果。




## Manpage

* [man xdg-user-dirs-update](https://manpages.ubuntu.com/manpages/questing/man1/xdg-user-dirs-update.1.html)
* [man user-dirs.dirs](https://manpages.ubuntu.com/manpages/questing/man5/user-dirs.dirs.5.html)
* [man user-dirs.conf](https://manpages.ubuntu.com/manpages/questing/man5/user-dirs.conf.5.html)
* [man user-dirs.defaults](https://manpages.ubuntu.com/manpages/questing/man5/user-dirs.defaults.5.html)
* [man xdg-user-dir](https://manpages.ubuntu.com/manpages/questing/man1/xdg-user-dir.1.html)




## 小技巧

* Arch Wiki / [XDG user directories](https://wiki.archlinux.org/title/XDG_user_directories)

另外從這篇教學，可以學到一個小技巧，執行下面指令，就會強制轉成英文命名的資料夾。

``` sh
LC_ALL=C.UTF-8 xdg-user-dirs-update --force
```
