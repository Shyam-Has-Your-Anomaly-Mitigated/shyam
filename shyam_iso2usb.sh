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
time cat > "$device" < "$file" && time sync;
# 2.8g(2977595392)@6m1.032s && _ @rpi
# 2.8g(2977595392)@4m6.766s && 1m12.269s @2in1

# esc(ape)
exit;

# 5w devices; still need gnome-disks for formatting,..
mount | grep /dev/sd;

# grub @ https://www.geeksforgeeks.org/how-to-fix-minimal-bash-like-line-editing-is-supported-grub-error-in-linux/
ls (*
set root=(ext*)
set prefix=(ext*)/boot/grub
insmod normal
normal
# they couldn't fucking make this easier
nano /etc/sudoers; # type out the whole fucking s/root/userfuckiname/
# why the fuck do i have to sudo reboot? rebooting is such a fucking vulnerability‽ it should fucking say why the fuck!
# i still haven't figured this out; i decided it's a security feature, since who the fuck knows any of this is my fucking authentication protocol
sudo grub-install /dev/mmcblk0*
sudo update-grub

# i don't think cats like raspberry pies…
# 12022 is the year of cutting my losses…
