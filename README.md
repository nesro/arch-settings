arch-settings
=============

TrackPoint Settings
===================

http://www.x.org/wiki/Development/Documentation/PointerAcceleration/
http://www.thinkwiki.org/wiki/How_to_configure_the_TrackPoint

synclient TouchpadOff=1
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Profile" "6"
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Velocity Scaling" "1"
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" "0.5"
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Adaptive Deceleration" "1"
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Inertia" "1"
# xinput --watch-props "TPPS/2 IBM TrackPoint"
# xinput --test "TPPS/2 IBM TrackPoint"
