#!/bin/sh

alacritty &

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

# wallpaper
picom &
nitrogen --restore &
