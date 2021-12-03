#!/bin/bash
maim -s | xclip -selection clipboard -t image/png
notify-send --expire-time=4000 --app-name=Screenshot --icon=camera "Screenshot taken"
