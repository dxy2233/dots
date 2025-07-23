#!/usr/bin/env bash

CHOICE=$(
  wofi \
    --define hide_search=true \
    --define cache-file=/dev/null \
    --show dmenu \
    --prompt " 󰤆 " \
    --width 180 \
    --height 540 \
    --columns 1 \
    --style ~/.config/waybar/scripts/powermenu.css \
    <<EOF
󰐥

󰌾
󰍃
EOF
)

case "$CHOICE" in
*󰐥*) systemctl poweroff ;;
**) systemctl reboot ;;
*󰌾*) hyprlock ;;
*󰍃*) hyprctl dispatch exit ;;
*) exit ;;
esac
