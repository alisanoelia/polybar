#!/usr/bin/sh

## Add this to your wm startup file.

# Terminate already running bar instances
pkill polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Center bar
polybar bar -c ~/.config/polybar/config.ini &

