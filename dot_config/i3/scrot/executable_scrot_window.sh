#!/bin/bash
# maim -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png
maim | xclip -selection clipboard -t image/png
notify-send --expire-time=4000 --app-name=Screenshot --icon=camera "Screenshot taken"
