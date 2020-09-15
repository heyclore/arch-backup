powertop --auto-tune
cpupower frequency-set -f 2.22GHZ -r
echo on > /sys/bus/usb/devices/1-1.2/power/control
