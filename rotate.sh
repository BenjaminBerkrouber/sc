#!/bin/bash
ORIENTATIONS=("left" "right" "normal" "inverted")

while true; do
    random_index=$(( $RANDOM % ${#ORIENTATIONS[@]} ))
    orientation=${ORIENTATIONS[$random_index]}
    xrandr --output HDMI-1-2 --rotate $orientation

    sleep 5
done
