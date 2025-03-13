#!/bin/bash

nitrogen --restore &
slstatus &
pipewire &
xbanish &
oneko -speed 4 &
# emacs --bg-daemon &

# Run xidlehook
xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 120 \
    'brightnessctl -d intel_backlight set 1%' \
    'brightnessctl -d intel_backlight set 25%' \
  --timer 30 \
    'brightnessctl -d intel_backlight set 25%; sudo zzz' \
    ''
