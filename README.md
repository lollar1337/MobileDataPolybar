# MobileDataPolybar
a Module to view your ModemManager Status and therefore your Mobile Data Status


![Screenshot of the Module](https://github.com/thisjade/MobileDataPolybar/blob/5eb3a9eab394a7ce2233ea86906a5ca082c968c7/screenshot_mobile_data.jpg "Screenshot")


## Dependencies

* You need ModemManager installed and running.

* You also need Googles Material Design Icons for the Train Symbol

[AUR](https://aur.archlinux.org/packages/ttf-material-design-icons-git)
```ini
https://aur.archlinux.org/packages/ttf-material-design-icons-git
```

## Module

```ini
[module/mobile]
type = custom/script
exec = ~/.config/polybar/mobile-data.sh
tail = true
```

## Configuration

Set your Symbol for infront of the Text in Polybar, set "" for no Symbol. (Standard uses a Mobile Data Symbol from Googles Material Icons)

```ini
SYMBOL=""
```
