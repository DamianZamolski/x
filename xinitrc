while true; do
  battery=$(cat /sys/class/power_supply/BAT0/capacity)%
  date=$(date +'%Y-%m-%d %H:%M')
  xsetroot -name "$battery $date"
  sleep 1m
done &

setxkbmap pl -option caps:escape
exec dwm
