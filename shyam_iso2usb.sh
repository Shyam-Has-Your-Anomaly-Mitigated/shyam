#!/bin/sh
# purpose: self-documented
# usage: sudo shyam_iso2usb.sh distro.iso /dev/sdX

# tab complete
file="$1.iso";
file="$1";

# gnome-disks
device="/dev/sd$2";
device="$2";

# kitty >whiskers< nom 🙀🙀 sink!
cat > "$device" < "$file" && sync;

# esc(ape)
exit;

# 5w devices
mount | grep /dev/sd;

# i don't think cats like raspberry pies…
