#!/bin/bash
echo -e "$(echo "scale=1; $(cat /sys/class/thermal/thermal_zone0/temp)/1000" | bc)°C"
