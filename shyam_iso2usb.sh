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
time cat > "$device" < "$file" && sync; # 2.8g(2977595392)@6m1.032s

# esc(ape)
exit;

# 5w devices; still need gnome-disks for formatting,..
mount | grep /dev/sd;

# i don't think cats like raspberry pies…
# 12022 is the year of cutting my losses…
