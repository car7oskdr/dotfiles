#!/bin/sh

xrandr --output eDP --auto --rotate normal --pos 0x0 --output HDMI-A-0 --auto --rotate normal --above eDP &
alacritty &

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

# wallpaper
picom &
nitrogen --restore &
