#!/bin/bash

battery_status=`acpi -b`

notify-send -t 300 "Battery status" "$battery_status"
