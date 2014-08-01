arch-settings
=============

This will be (when finished) my cheatsheet how to install Arch Linux on my notebook (Lenovo Thinkpad Edge E330 3354-9RG,  Intel Core i3 2328M, 4GB RAM). It's just an LXDE Desktop with Chromium. Nothing serious or super geeky. If you find any mistakes, inaccuracies or possible improvements, I'll love from the bottom of my heart if you'll tell me.  

Installation
------------
- choose x86_64
- set up wifi (wlp2s0)
- set up timezone Europe/Prague, sync witch ntpd
- autoprepare storage (swap 1024MB, Ext 4)
- sources: no testing, mirror nic.cz, yes extra, packages: base-devel, xorg*, and then wpa_supplicant, sudo, xorg-xinit
- set up hostname to "arch" and set up root password
- install grub and write to config file: set timeout="1"
- reboot
- netctl start wlp2s0-wireless-something #set up wifi
- pacman -Syy # force refresh all package lists
- pacman -Syu
- useradd -m -G wheel -s /bin/bash n # set up my user
- passwd n
- visudo # uncomment: %wheel ALL=(ALL) ALL
- exit
- login as n
- sudo pacman -S lxde gnome-icon-theme vim
- mkdir -p ~/.config/openbox # copy openbox setting files
- cp /etc/xdg/openbox/* ~/.config/openbox
- vim .bash_profile # add: if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
- vim .xinitrc # add: exec startxlde
- startx # start lxde :)

TrackPoint Settings
-------------------

http://www.x.org/wiki/Development/Documentation/PointerAcceleration/
http://www.thinkwiki.org/wiki/How_to_configure_the_TrackPoint

  - synclient TouchpadOff=1
  - xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Profile" "6"
  - xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Velocity Scaling" "1"
  - xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" "0.5"
  - xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Adaptive Deceleration" "1"
  - xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Inertia" "1"
  - # xinput --watch-props "TPPS/2 IBM TrackPoint"
  - # xinput --test "TPPS/2 IBM TrackPoint"
