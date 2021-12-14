while true; do
   xsetroot -name "$(cat /sys/class/power_supply/BAT0/capacity)% $(date +'%Y-%m-%d %H:%M')"
   sleep 1m    # Update time every minute
done &

setxkbmap pl -option caps:escape
exec dwm
