#!/usr/bin/env bash
XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
WALLPAPER_DIR="$HOME/Images/wallpaper/"
WALL_LOC="$XDG_STATE_HOME/wallpaper"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$(readlink -e "$WALL_LOC")")" | shuf -n 1)

ln -sf "$WALLPAPER" "$WALL_LOC"

if ! pgrep -x hyprpaper > /dev/null; then
    hyprpaper &
    sleep 0.2
fi

hyprctl hyprpaper wallpaper "HDMI-A-1,$WALLPAPER"
