#!/bin/sh

xrandr --output eDP1 --auto --rotate normal --pos 0x0 --output HDMI1 --auto --rotate normal --above eDP1 &
alacritty &

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

# wallpaper
picom &
nitrogen --restore &
