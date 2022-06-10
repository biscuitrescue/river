swaybg -i ~/Pictures/Wallpapers/ign_farFromTomorrow.png -m fill &

killall dunst &
dunst &
pkill waybar
waybar &
killall xfce-polkit
xfce-polkit &
killall nm-applet
nm-applet --indicator &
killall xss-lock &
xss-lock --transfer-sleep-lock -- wayblur --nofork

# River will send the process group of the init executable SIGTERM on exit.
riverctl default-layout rivertile &
exec rivertile -main-ratio 0.5 -view-padding 2 -outer-padding 2 &
for pad in $(riverctl list-inputs | grep -i touchpad )
do
  riverctl input $pad events enabled
  riverctl input $pad tap enabled
done
