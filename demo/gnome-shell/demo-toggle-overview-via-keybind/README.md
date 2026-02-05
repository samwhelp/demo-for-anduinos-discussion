

# demo-toggle-overview-via-keybind




## Subject

* [Discussion](#discussion)
* [Script](#script)
* [Survey](#survey)
* [Link](#link)




## Discussion

* [Keybind / Overview](https://github.com/Anduin2017/AnduinOS/discussions/309#discussioncomment-15670168)
* [Keybind / Application Overview](https://github.com/Anduin2017/AnduinOS/discussions/309#discussioncomment-15670240)




## Script

| Script |
| ------ |
| [config-keybind-toggle-application-overview.sh](config-keybind-toggle-application-overview.sh) |




## Survey

* [Keybind / Overview](#keybind--overview)
* [Keybind / Application Overview](#keybind--application-overview)




## Keybind / Overview




### Toggle Overview


run

``` sh
gsettings list-recursively | grep keybind | grep overview
```

show

```
org.gnome.shell.keybindings shift-overview-down ['<Super><Alt>Down']
org.gnome.shell.keybindings shift-overview-up ['<Super><Alt>Up']
org.gnome.shell.keybindings toggle-overview ['<Super>Tab']
```

| Keybind | Action | Set Item |
| ------- | ------ | -------- |
| `Super + Tab` | Toggle Overview | `org.gnome.shell.keybindings toggle-overview` |
| `Super + Alt + Up` | Shift Overview Up | `org.gnome.shell.keybindings shift-overview-up` |
| `Super + Alt + Down` | Shift Overview Down | `org.gnome.shell.keybindings shift-overview-down` |


* You can repeatedly press `Super + Tab` to show or hide the `Overview`.
* Press `Super + Alt + Up` to show `Overview`, and press `Super + Alt + Up` again to show `Application Overview`, then press `Super + Alt + Down` to back `Overview`, then press `Super + Alt + Down` to back `Desktop`.




### Search

run

``` sh
gsettings list-recursively | grep '<Super>s'
```

show

```
org.freedesktop.ibus.general.hotkey triggers ['<Super>space']
org.freedesktop.ibus.panel.emoji hotkey ['<Super>period', '<Super>semicolon']
org.gnome.desktop.wm.keybindings switch-input-source ['<Super>space', 'XF86Keyboard']
org.gnome.desktop.wm.keybindings switch-input-source-backward ['<Shift><Super>space', '<Shift>XF86Keyboard']
org.gnome.settings-daemon.plugins.media-keys screenreader ['<Alt><Super>s']
org.gnome.settings-daemon.plugins.media-keys search ['<Super>s']
```


Another setting has a key binding of `Super + s`, which looks the same as `Toggle Overview`.

```
org.gnome.settings-daemon.plugins.media-keys search ['<Super>s']
```

In essence, it should be the function of `Search`, just using the same interface.





## Keybind / Application Overview




### Toggle Application Overview


run

``` sh
gsettings list-recursively | grep keybind | grep toggle
```

show

```
org.gnome.desktop.wm.keybindings toggle-above @as []
org.gnome.desktop.wm.keybindings toggle-fullscreen ['<Super>F11']
org.gnome.desktop.wm.keybindings toggle-maximized ['<Super>Up']
org.gnome.desktop.wm.keybindings toggle-on-all-workspaces @as []
org.gnome.mutter.keybindings toggle-tiled-left @as []
org.gnome.mutter.keybindings toggle-tiled-right @as []
org.gnome.shell.keybindings toggle-application-view @as []
org.gnome.shell.keybindings toggle-message-tray ['<Super>n']
org.gnome.shell.keybindings toggle-overview ['<Super>Tab']
org.gnome.shell.keybindings toggle-quick-settings ['<Super>a']
```

There are currently no key bindings set.

```
org.gnome.shell.keybindings toggle-application-view @as []
```




## How to set

### example 1

keybind `Alt + F3` to trigger `Toggle Application View`.

``` sh
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Alt>F3']"
```

### example 2

or keybind `Super + grave` to trigger `Toggle Application View`.

> The key `grave` usually above the `Tab` key.

``` sh
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave']"
```

### example 3

or, you can bind two sets of key combinations to trigger `Toggle Application View`.

you can press `Super + grave` or press `Alt + F3` to trigger `Toggle Application View`.

``` sh
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave', '<Alt>F3']"
```





## Link

* Ubuntu Desktop Guide / [Visual overview of GNOME](https://help.ubuntu.com/stable/ubuntu-help/shell-introduction.html.en)
* [Projects/GnomeShell/CheatSheet](https://wiki.gnome.org/Projects(2f)GnomeShell(2f)CheatSheet.html)
