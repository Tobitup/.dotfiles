#!/run/current-system/sw/bin/bash

player_status=$(playerctl status 2> /dev/null)
if [ "$player_status" = "Playing" ]; then
    echo "  $(playerctl metadata artist) - $(playerctl metadata title)"
elif [ "$player_status" = "Paused" ]; then
    echo "  $(playerctl metadata artist) - $(playerctl metadata title) <span color='#e1f0f2'> </span>"
fi
