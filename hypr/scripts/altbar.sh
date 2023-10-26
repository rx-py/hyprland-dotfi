#!/usr/bin/env bash



## launch waybar with alt config

CONFIG="$HOME/.config/waybar/config.jsonc"
STYLE="/home/rick/.config/waybar/style.css"

if [[ ! `pidof waybar` ]]; then
	waybar --bar main-bar --log-level error --config ${CONFIG} --style ${STYLE}
fi


