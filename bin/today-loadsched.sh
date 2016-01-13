#!/bin/bash

sched=`batti -g 4 -t`

notify-send -t 1000 "Today's loadshedding" "$sched"
