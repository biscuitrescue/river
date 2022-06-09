#!/usr/bin/env bash

mem(){
	mem=`free | awk '/Swap/ {printf "%d Mib", $3 / 1024.0, $2 / 1024.0 }'`
	sleep 0
	echo " $mem"
}
mem
