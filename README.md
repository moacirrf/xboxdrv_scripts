# XBoxDrv Script

Scripts for various joysticks to be mapped to xbox, using xboxdrv.

## Suported Joysticks
- Inova CON_7191

- Gamepad or Psxpad (Personal Communication Systems, Inc. Dual PSX Adaptor)

## Problems
- Force Feedback may not works.

## How to use
  1- Connect your joystick

  2- Open an terminal

  3- Execute one of script
  > sudo psxpad_to_xbox.sh

If you need use more than one joystick you can edit joystick

Change this line of:

> input='js0'

to 

> input='js1'

or other number