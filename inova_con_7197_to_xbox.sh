#!/bin/bash

# Change this line to js1 if your joystick is connected on js1 or if it dont respond.
input='js0'

event=$(cat /proc/bus/input/devices | grep -A 10 'CON-7197' | grep $input | grep -oe 'event[0-9]*')

if [ -z $event ]; then
  echo "  Joystick not found, edit this file, change the line
  input=$input
  to
  input='js1' or other number."
  exit
fi;

xboxdrv --evdev /dev/input/${event} \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RZ=y2,ABS_Z=x2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --axismap -Y1=Y1,-Y2=Y2 \
    --evdev-keymap BTN_START=start,BTN_SELECT=back,BTN_A=a,BTN_B=b,BTN_X=x,BTN_Y=y,BTN_TL=lb,BTN_TR=rb,BTN_TL2=lt,BTN_TR2=rt,BTN_THUMBL=tl,BTN_THUMBR=tr \
    --mimic-xpad --silent --force-feedback
