#!/bin/bash

ssids=$(nmcli -f SSID -t -m tabular dev wifi | awk -F'  +' '{ if (!seen[$1]++)print "\n",$1, "   " }')
echo $ssids
