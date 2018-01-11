#!/bin/bash
xrdb ~/.Xresources
feh --bg-scale ~/Downloads/wallpaper.jpg
compton & 
exec sbcl --load ~/stumpwm/startstump 
