

# demo-toggle-overview-via-hotcorner




## Subject

* [Discussion](#discussion)
* [Script](#script)
* [Survey](#survey)
* [Link](#link)




## Discussion

* [#309 - Where is the taskbar Activities button?](https://github.com/Anduin2017/AnduinOS/discussions/309#discussioncomment-15670300)




## Script

| Script |
| ------ |
| [config-enable-hotcorner.sh](config-enable-hotcorner.sh) |
| [config-disable-hotcorner.sh](config-disable-hotcorner.sh) |




## Survey




## Hot Corner

`Gnome Shell` provide a feature called `Hot Corner`, which show `Overview` when you move your mouse to the top left corner.




### Set via CLI

It can also be set via commands.

run

``` sh
gsettings list-recursively | grep hot-corner
```

show

```
org.gnome.desktop.interface enable-hot-corners false
```

Execute the following command to enable the `Hot Corner` feature.

``` sh
gsettings set org.gnome.desktop.interface enable-hot-corners true
```




## Link

* Ubuntu Desktop Guide / [Visual overview of GNOME](https://help.ubuntu.com/stable/ubuntu-help/shell-introduction.html.en)
* [Projects/GnomeShell/CheatSheet](https://wiki.gnome.org/Projects(2f)GnomeShell(2f)CheatSheet.html)
