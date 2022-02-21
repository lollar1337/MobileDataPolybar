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

[FreeBSD](https://pkg.freebsd.org/FreeBSD:13:amd64/latest/All/material-icons-ttf-5.0.1.pkg)
```ini
https://pkg.freebsd.org/FreeBSD:13:amd64/latest/All/material-icons-ttf-5.0.1.pkg
```

[Ubuntu](http://archive.ubuntu.com/ubuntu/pool/universe/f/fonts-material-design-icons-iconfont/fonts-material-design-icons-iconfont_5.0.1-2_all.deb)
```ini
http://archive.ubuntu.com/ubuntu/pool/universe/f/fonts-material-design-icons-iconfont/fonts-material-design-icons-iconfont_5.0.1-2_all.deb
```

[Fedora](https://download-ib01.fedoraproject.org/pub/fedora/linux/development/rawhide/Everything/x86_64/os/Packages/m/material-icons-fonts-4.0.0-6.fc36.noarch.rpm)
```ini
https://download-ib01.fedoraproject.org/pub/fedora/linux/development/rawhide/Everything/x86_64/os/Packages/m/material-icons-fonts-4.0.0-6.fc36.noarch.rpm
```  
  

## Module

```ini
[module/mobile]
type = custom/script
exec = ~/.config/polybar/mobile-data.sh
tail = true
```

## Options in mobile-data.sh

Set your Symbol for infront of the Text in Polybar, set "" for no Symbol. (Standard uses a Mobile Data Symbol from Googles Material Icons)

```ini
SYMBOL=""
```
