#!/usr/bin/env bash

# compositor
killall picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config $HOME/.config/picom/picom.conf --vsync &

$HOME/.config/polybar/launch.sh &

#bg
#nitrogen --restore &
#~/.fehbg &
#clipmenud &
#dunst &
#autotiling &
#pcloud &
#unclutter &
#vorta &

#setxkbmap -option ctrl:nocaps &
#setxkbmap -layout colemak &

#[ ! -s ~/.config/mpd/pid ] && mpd &
#/usr/libexec/polkit-gnome-authentication-agent-1 &
#/usr/lib/polkit-kde-authentication-agent-1 &
