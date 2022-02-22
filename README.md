# MobileDataPolybar
a Module that shows your [ModemManager](https://github.com/freedesktop/ModemManager) Status in the Polybar


![Screenshot of the Module](https://github.com/thisjade/MobileDataPolybar/blob/5eb3a9eab394a7ce2233ea86906a5ca082c968c7/screenshot_mobile_data.jpg "Screenshot")


## Dependencies

* You need ```ModemManager``` and ```jq```.

* You need ModemManager running.


## Module

```ini
[module/mobile]
type = custom/script
exec = ~/.config/polybar/mobile-data.sh
tail = true
```

## Configuration

Set your Symbol for infront of the Text in Polybar, set "" for no Symbol.

```ini
SYMBOL=""
```
