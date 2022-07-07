#!/bin/bash

# Change this line to js1 if your joystick is connected on js1 or if it dont respond.
input='js0'
name='Twin USB Joystick'

event=$(cat /proc/bus/input/devices | grep -A 10 Name=\""$name"\" | grep $input | grep -oe 'event[0-9]*')

if [ -z $event ]; then
  echo "  Joystick not found, edit this file, change the line
  input=$input
  to
  input='js1' or other number."
  exit
fi;

xboxdrv --evdev /dev/input/${event} \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RZ=x2,ABS_Z=y2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --axismap -Y1=Y1,-Y2=Y2 \
    --evdev-keymap   BTN_TOP=x,BTN_TRIGGER=y,BTN_THUMB2=a,BTN_THUMB=b,BTN_BASE3=back,BTN_BASE4=start,BTN_BASE=lb,BTN_BASE2=rb,BTN_TOP2=lt,BTN_PINKIE=rt,BTN_BASE5=tl,BTN_BASE6=tr \
    --mimic-xpad --silent --force-feedback