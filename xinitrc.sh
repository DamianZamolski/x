while true; do
  volume="Volume: $(amixer get Master | awk '/Mono:/ {print substr($4, 2, length($4) - 2)}')"
  ram=$(free -h | awk '/Mem/ {print "Free: "$4" | Available: "$7}')
  battery="Battery: $(cat /sys/class/power_supply/BAT0/capacity)%"
  date_time=$(date +'%Y-%m-%d | %H:%M:%S')
  xsetroot -name "$volume | $ram | $battery | $date_time"
  sleep 1s
done &

setxkbmap pl -option caps:escape
exec dwm
