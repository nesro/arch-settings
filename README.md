arch-settings
=============

This will be (when finished) my cheatsheet how to install Arch Linux on my notebook (Lenovo Thinkpad Edge E330 3354-9RG,  Intel Core i3 2328M, 4GB RAM). Nothing serious or super geeky. If you find any mistakes, inaccuracies or possible improvements, I'll love you from the bottom of my heart if you'll tell me.  

Program set
-----------

- enviroment: lxde (openbox) (when stable, I want to use LXQt)
- browser: chromium (+ vimium, g.lux, google dictionary, stay focused, tampermonkey, instant notification for gmail, adblock, theme: https://chrome.google.com/webstore/detail/black-frame/fbobkgncdnceioeamcbkjokeajockeil)
- im: pidgin
- video: vlc
- file manager: pcmanfm
- sync: dropbox
- encryption: encfs

Installation
------------
- choose x86_64
- set up wifi (wlp2s0)
- set up timezone Europe/Prague, sync with ntpd
- autoprepare storage (swap 1024MB, Ext 4)
- sources: no testing, mirror nic.cz, yes extra, packages: base-devel, xorg*, and then sudo , wpa_supplicant, dialog
- set up hostname to "arch" and set up the root password
- install grub and write to the config file: set timeout="1"
- reboot
- netctl start wlp2s0-wireless-something #set up wifi
- pacman -Syy # force refresh all package lists
- pacman -Syu
- useradd -m -G wheel -s /bin/bash n # set up my user
- passwd n
- visudo # uncomment: %wheel ALL=(ALL) ALL
- exit
- login as n
- sudo pacman -S ttf-dejavu ttf-freefont lxde gnome-icon-theme vim chromium xorg-xinit scrot libva-intel-driver vlc leafpad pulseaudio-alsa openconnect pidgin python2-dbus p7zip encfs alsa-utils alsa-oss ntfs-3g pavucontrol file-roller
- mkdir -p ~/.config/openbox && cp /etc/xdg/openbox/* ~/.config/openbox # copy openbox setting files
- echo "if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi" >> ~/.bash_profile
- echo "exec startxlde" >> ~/.xinitrc
- startx # start lxde :)
- set up LXDE
  - panel to the left, 30px wide
  - applets: digital clock, task bar, volume control, application launch bar, resource monitors (CPU), resource monitors (RAM), system tray, menu
- menu->preferences->customize look and feel->set up gnome icon theme
- https://aur.archlinux.org/packages/packer/ tar zxf, makepkg -s, pacman -U *xz # install packer
- packer -S chromium-libpdf chromium-pepper-flash dropbox
- ln -s ~/Dropbox/ d # create a symlink to dropbox

TrackPoint Settings
-------------------

http://www.x.org/wiki/Development/Documentation/PointerAcceleration/
http://www.thinkwiki.org/wiki/How_to_configure_the_TrackPoint

  - synclient TouchpadOff=1
  - xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
  - xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
  - xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
  - # xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Profile" "6"
  - # xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Velocity Scaling" "1"
  - # xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" "0.2"
  - # xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Adaptive Deceleration" "1"
  - # xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Inertia" "1"
  - # xinput --watch-props "TPPS/2 IBM TrackPoint"
  - # xinput --test "TPPS/2 IBM TrackPoint"
  - # xinput --list-props "TPPS/2 IBM TrackPoint"

Mounting usb
------------
- mkdir -p /mnt/usb
- vim /etc/fstab # add: /dev/sdb1 /mnt/usb vfat user,noauto,noatime,flush 0 0
- mount /dev/sdb1 /mnt/usb
- umount /mnt/usb
