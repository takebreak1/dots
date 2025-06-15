region="$(slurp)"

if [ -z "$region" ]; then
    exit 1
fi
filename="$HOME/Pictures/Screenshot/Screenshot-$(date +'%d-%m-%Y_%H-%M-%S').png"
grim -g "$region" "$filename"
notify-send "Screenshot captured" "$filename"
