# XBoxDrv Script

Scripts for various joysticks to be mapped to xbox, using xboxdrv.

## Suported Joysticks
- Inova CON_7197

![image](https://user-images.githubusercontent.com/950706/177052370-91d2686b-e7ca-476f-bd7e-5952c1e0fcc1.png)


- Gamepad or Psxpad (Personal Communication Systems, Inc. Dual PSX Adaptor)

![image](https://user-images.githubusercontent.com/950706/177052321-36c80abd-451e-404a-b6d2-d8416c40dac1.png)

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
