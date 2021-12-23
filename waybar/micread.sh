#!/usr/bin/env bash

mic(){
	mic=`pamixer --source 46 --get-volume-human`
	echo  $mic
}

mic
