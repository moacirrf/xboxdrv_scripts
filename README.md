# XBoxDrv Scripts for Linux

Scripts for various joysticks to be mapped to xbox, using xboxdrv, now you can play your favorite games on sites:
- https://www.xbox.com/pt-BR/play

- https://jam.gg/ or https://piepacker.com/#root

## Suported Joysticks
- Inova CON_7197

https://raw.githubusercontent.com/moacirrf/xboxdrv_scripts/main/inova_con_7197_to_xbox.sh

![image](https://user-images.githubusercontent.com/950706/177052370-91d2686b-e7ca-476f-bd7e-5952c1e0fcc1.png)

- Twin USB Joystick (Personal Communication Systems, Inc. Dual PSX Adaptor)

https://raw.githubusercontent.com/moacirrf/xboxdrv_scripts/main/twin_usb_to_xbox.sh

![image](https://user-images.githubusercontent.com/950706/177052321-36c80abd-451e-404a-b6d2-d8416c40dac1.png)

## Problems
- Force Feedback may not works.

## How to use
  1- Install xboxdrv (https://xboxdrv.gitlab.io/) on your favorite linux distro
  
  2- Restart your system
  
  3- Connect your joystick

  4- Open an terminal

  5- Execute one of script
  > sudo sh twin_usb_to_xbox.sh

If you need use more than one joystick you can edit the script and change the line:

> input='js0'

to 

> input='js1'

or other number
