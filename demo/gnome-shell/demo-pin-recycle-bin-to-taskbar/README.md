

# demo-pin-recycle-bin-to-taskbar




## Subject

* [Discussion](#discussion)
* [Link](#link)




## Discussion

* [#277 - Move recycle bin to taskbar](https://github.com/Anduin2017/AnduinOS/discussions/277)
* [#281 - [Ubuntu Desktop] Add "Show Trash Folder" setting](https://github.com/Anduin2017/AnduinOS/issues/281)




## Link

* [Desktop Entry Specification](https://specifications.freedesktop.org/desktop-entry/latest/)
* [Icon Theme Specification](https://specifications.freedesktop.org/icon-theme/latest/)
* [Icon Naming Specification](https://specifications.freedesktop.org/icon-naming/latest/)




## org.gnome.shell.extensions.ding

* GNOME Shell Extensions / [Desktop Icons NG (DING) ](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)
* GitLab / [desktop-icons-ng](https://gitlab.com/rastersoft/desktop-icons-ng)


run

``` sh
gsettings list-recursively | grep org.gnome.shell.extensions.ding
```

show

```
org.gnome.shell.extensions.ding add-volumes-opposite true
org.gnome.shell.extensions.ding arrangeorder 'NAME'
org.gnome.shell.extensions.ding check-x11wayland true
org.gnome.shell.extensions.ding dark-text-in-labels false
org.gnome.shell.extensions.ding icon-size 'standard'
org.gnome.shell.extensions.ding keep-arranged false
org.gnome.shell.extensions.ding keep-stacked false
org.gnome.shell.extensions.ding show-drop-place true
org.gnome.shell.extensions.ding show-home true
org.gnome.shell.extensions.ding show-link-emblem true
org.gnome.shell.extensions.ding show-network-volumes false
org.gnome.shell.extensions.ding show-trash true
org.gnome.shell.extensions.ding show-volumes true
org.gnome.shell.extensions.ding sort-special-folders false
org.gnome.shell.extensions.ding start-corner 'top-left'
org.gnome.shell.extensions.ding unstackedtypes @as []
org.gnome.shell.extensions.ding use-nemo false
```


run to hide `trash icon at desktop` via `gsettings`

``` sh
gsettings set org.gnome.shell.extensions.ding show-trash false
```

or run to hide `trash icon at desktop` via `dconf`

``` sh
dconf write /org/gnome/shell/extensions/ding/show-trash false
```
