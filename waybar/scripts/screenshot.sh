#!/bin/bash
SAVE_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SAVE_DIR"
FILENAME="$SAVE_DIR/Screenshot-$(date +'%d-%m-%y').png"
grim -g "$(slurp)" "$FILENAME"
wl-copy < "$FILENAME"
