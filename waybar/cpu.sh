cpu(){
	read cpu a b c previdle rest < /proc/stat
	prevtotal=$((a+b+c+previdle))
	sleep 0.1
	read cpu a b c idle rest < /proc/stat
	sleep 0.1
	total=$((a+b+c+idle))
	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))

	echo " $cpu%"
}

cpu
