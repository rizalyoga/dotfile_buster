#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#polybar -c ~/.config/polybar/config.ini &
#polybar -c ~/.config/polybar/tester-file-1.ini main &
#polybar -c ~/.config/polybar/tester-file-4.ini main & 
#polybar -c ~/.config/polybar/tester-file-5.ini & 

#if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main -c ~/.config/polybar/tester-file-4.ini &
#   MONITOR=$m polybar --reload main -c ~/.config/polybar/tester-file-5.ini & 
  done
#else
#  polybar --reload example &
#fi
