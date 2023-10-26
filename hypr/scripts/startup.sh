#!/usr/bin/env bash


# Kill already running process
_ps=(waybar)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done



# ------ Wayland Scale ------
exec-once= xprop -root -f _XWAYLAND_GLOBAL_OUTPUT_SCALE 32c -set _XWAYLAND_GLOBAL_OUTPUT_SCALE 1 &

# ------ Startups ------
exec-once = systemctl import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
exec-once = ~/.config/hypr/xdg-portal-hyprland.sh &
exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &

# ------ Polkit agent - authentication dialogue for GUI apps ------
exec-once = /usr/lib/polkit-kde-authentication-agent-1 & 

# ------ wallpaper ------
exec-once = bash ~/.config/hypr/scripts/backgroundimg.sh &

# ------ notification daemon ------
exec-once = dunst &	


# ------ apps ------
# waybar
exec-once = waybar &
# systray app for BT
exec-once = blueman-applet & 		
# systray app for Network/Wifi
exec-once = nm-applet --indicator 





# Lauch alternative statusbar (waybar)
# exec-once = bash ~/.config/hypr/scripts/altbar.sh &

