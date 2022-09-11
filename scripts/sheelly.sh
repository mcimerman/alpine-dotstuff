#!/bin/bash

while true
do
	bat=$(cat /sys/class/power_supply/BAT0/capacity)
	ac=$(cat /sys/class/power_supply/AC/online)
	xsetroot -name " [$(df -h /dev/dm-0 | tail -1 | cut -d' ' -f 11)/$(df -h /dev/dm-0 | tail -1 | cut -d' ' -f 8)] | $(cat /proc/acpi/ibm/fan | grep speed | cut -f 3) RPM | $(sensors | grep CPU | cut -d' ' -f 11) | $(cat /sys/class/power_supply/BAT0/capacity) % | $(date +"%R %d-%m-%Y " )"
	if [ $bat -lt 20 -a $ac -ne 1 ]; then
		notify-send $bat "BATERKA"
	elif [ $bat -gt 75 -a $ac -eq 1 ]; then
		notify-send $bat "BATERKAAAAAAAAAAAAAA"
	fi
	if [ $bat -lt 10 ]; then
		pm-suspend
	fi
	sleep 60
done
