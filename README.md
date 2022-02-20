# MobileDataPolybar
a Module to view your ModemManager Status and therefore your Mobile Data Status

## Dependencies

* You need ModemManager installed and running.


## Module

```ini
[module/mobile]
type = custom/script
exec = ~/.config/polybar/mobile-data.sh
tail = true
```
