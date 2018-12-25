#!/bin/bash
xset r rate 200 60
xrdb ~/.Xresources
xset +fp /home/zinzon/.fonts/ &
feh --bg-scale ~/Pictures/wallpaper.jpg
#compton -bGC 
exec sbcl --load ~/stumpwm/startstump 
