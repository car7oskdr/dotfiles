#!/usr/bin/env bash

uptime=$(uptime -p | sed -e 's/up //g')

# Rofi dmenu mode, -i make search case-insensitive, -l is the number of line
wofi_command="wofi -dmenu -i -l 5"

shutdown="󰐥 | Shutdown"
reboot=" | Restart"
lock=" | Lock"
suspend="󰤄 | Suspend"
logout="󰍂 | Logout"

options="$shutdown\n$reboot\n$logout\n$suspend\n$lock"

chosen="$(echo -e "$options" | $wofi_command)"
echo $chosen
case $chosen in
    $shutdown)
			systemctl poweroff
        ;;
    $reboot)
			systemctl reboot
        ;;
    $lock)
      # Install swaylock-effects for better configuration
			swaylock -l
        ;;
    $suspend)
			mpc -q pause
			amixer set Master mute
			systemctl suspend
        ;;
    $logout)
      hyprctl dispatch exit
        ;;
esac

