redshift -03500 &
xset r rate 300 50 &
feh --no-fehbg --bg-fill "$HOME/img/papes/1920x1080.jpg" &
setxkbmap -layout br,ru,gr -variant abnt2,phonetic_dvorak -option grp:ctrls_toggle &

compton &
dwmstatus 2>&1 >/dev/null &

while true; do
	dwm 2> ~/.dwm.log
done
