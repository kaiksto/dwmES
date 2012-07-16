#!/bin/sh
# dmenu based directory browser
# made to match dwm environment
# use in terminal emulator
# depends on dmenu, and terminus font(but not necessary)
# it's good to define a shortcut for this in ~/.bashrc

chosen="just for not being empty"
DMENU="dmenu -i -fn -*-terminus-medium-r-*-*-14-*-*-*-*-*-*-*"
COLORS=" -nb #000000 -nf #706c9a -sb #000000 -sf #dddddd"

while [ "$chosen" != "" ]; do
	clear && pwd && ls -X
	chosen=`( ( echo "../" && ls -1p ) | grep "/" ) | $DMENU $COLORS`
	cd "$chosen"
done
