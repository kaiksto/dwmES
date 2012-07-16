#!/bin/bash
# it kills process of selected window
# I use it with link in /local/bin/gtfo and launch it with dmenu-run
kill `xprop | grep PID | cut -d ' ' -f3`
