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


## How to use
  1- Download the script for your joystick, for example this:

  https://raw.githubusercontent.com/moacirrf/xboxdrv_scripts/main/twin_usb_to_xbox.sh

  2- Install xboxdrv (https://xboxdrv.gitlab.io/) on your favorite linux distro

  If Ubuntu:

  ```sudo apt install xboxdrv```

  If Arch:

  ```sudo pamac install xboxdrv```

  3- Maybe you will need restart your system
  
  4- Connect your joystick

  5- Open an terminal

  6- Execute one of script

 ``` sh twin_usb_to_xbox.sh```
 
 Maybe you will need execute as root
 
 ``` sudo sh twin_usb_to_xbox.sh```
 
  You must to see something like:
```
xboxdrv 0.8.8 - http://pingus.seul.org/~grumbel/xboxdrv/ 
Copyright \u00a9 2008-2011 Ingo Ruhnke <grumbel@gmail.com> 
Licensed under GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html> 
This program comes with ABSOLUTELY NO WARRANTY. 
This is free software, and you are welcome to redistribute it under certain conditions; see the file COPYING for details. 


Your Xbox/Xbox360 controller should now be available as:
  /dev/input/js3
  /dev/input/event7

Press Ctrl-C to quit
```
It means that your device will act like a xbox/xbox360 controller.

  7- Enjoy, if have success you will don't need to deal with mapping programs.


## Problems
1- My controller is not regognized:

Open the script on editor and change the line:

```input='js0'```

to 

``` input='js1' ```

2- I need to connect two controllers.

Create a copy of the script, open on editor and change the line:

``` input='js0' ```

to 

``` input='js1' ```

Then execute on second terminal.

2- I would like to find my self my joystick or what this script is doing?

Execute 

``` cat /proc/bus/input/devices ```

You must see something like:

```I: Bus=0003 Vendor=045e Product=028e Version=0110
I: Bus=0005 Vendor=1949 Product=0402 Version=011b
N: Name="CON-7197"
P: Phys=00:1a:7d:da:71:13
S: Sysfs=/devices/pci0000:00/0000:00:01.3/0000:01:00.0/usb1/1-4/1-4:1.0/bluetooth/hci0/hci0:70/0005:1949:0402.0010/input/input68
U: Uniq=ff:2c:47:ff:63:25
H: Handlers=event25 js0 
B: PROP=0
B: EV=1b
B: KEY=7fff000000000000 0 0 0 0
B: ABS=30627
B: MSC=10
```
As you can see the name of joystick is ```CON-7197```and 
Handlers is ```event25 js0```

So the command on xboxdrv will be:
```
xboxdrv --evdev /dev/input/event25 \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RZ=y2,ABS_Z=x2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --axismap -Y1=Y1,-Y2=Y2 \
    --evdev-keymap BTN_START=start,BTN_SELECT=back,BTN_A=a,BTN_B=b,BTN_X=x,BTN_Y=y,BTN_TL=lb,BTN_TR=rb,BTN_TL2=lt,BTN_TR2=rt,BTN_THUMBL=tl,BTN_THUMBR=tr \
    --mimic-xpad --silent --force-feedback
```

Of course you will need map the correct buttons on the lines:
```
--evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RZ=y2,ABS_Z=x2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --axismap -Y1=Y1,-Y2=Y2 \
    --evdev-keymap BTN_START=start,BTN_SELECT=back,BTN_A=a,BTN_B=b,BTN_X=x,BTN_Y=y,BTN_TL=lb,BTN_TR=rb,BTN_TL2=lt,BTN_TR2=rt,BTN_THUMBL=tl,BTN_THUMBR=tr
```

Cheers
