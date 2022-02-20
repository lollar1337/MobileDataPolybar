# MobileDataPolybar
a Module to view your ModemManager Status and therefore your Mobile Data Status
![Screenshot of the Module](https://github.com/thisjade/MobileDataPolybar/blob/5eb3a9eab394a7ce2233ea86906a5ca082c968c7/screenshot_mobile_data.jpg "Screenshot")


## Dependencies

* You need ModemManager installed and running.


## Module

```ini
[module/mobile]
type = custom/script
exec = ~/.config/polybar/mobile-data.sh
tail = true
```
