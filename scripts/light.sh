#!/bin/bash
# ====================================================
#   Copyright (C)2020 All rights reserved.
#
#   Author        : fankaljead
#   Email         : fankaljead@gmail.com
#   File Name     : light.sh
#   Last Modified : 2020-03-20 08:43
#   Describe      :
#
# ====================================================

light_ness=1
light_low=0.05
light_high=0.05

#xrandr --output eDP-1 --brightness

up() {
	if [ $light_ness -le $light_high ]
	then
		light_ness = `expr $light_ness+0.05`
		xrandr --output eDP-1 --brightness $light_ness
	fi	
	return $light_ness
}

down() {
	if [ $light_ness -ge $light_low ]
	then
		light_ness = $(($light_ness - 0.05))|bc
		xrandr --output eDP-1 --brightness $light_ness
	fi
	return $light_ness
}

down
