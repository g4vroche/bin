#!/bin/bash

# Workarrounds for missing features with enbook under ubuntu
# See https://help.ubuntu.com/community/AsusZenbookPrime for explanation and source

## Touchpad
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics ClickPad" 1
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Soft Button Areas" 1956 0 1737 0 1304 1955 1737 0
syndaemon -i 1.7 -d -t -K
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Scrolling Distance" 35, 35 # scroll more responsive
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Finger" 1, 15, 50 # ups click sensitivity
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Tap FastTap" 1 # faster taps

## brightness shrtcuts not working : adding a widget to control that
# First install script from the net :
# wget "http://codevanrohde.nl/wordpress/wp-content/plugins/filedownload/download.php/?path=http://codevanrohde.nl/wordpress/wp-content/uploads/2011/11/indicator-brightness-maxsteps.py&type=text/plain&referer=/wordpress/?p=128" -O ~/bin/indicator-brightness.py && chmod u+x ~/bin/indicator-brightness.py
#pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --set-brightness 1000
