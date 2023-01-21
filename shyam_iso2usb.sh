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
set root=(ext*) # i don't think this is even necessary; (but) what does it do? is any of this necessary? no, wait; maybe it broke halt…
set prefix=(ext*)/boot/grub
insmod normal
normal
# they couldn't fucking make this easier; i already fucking memorised it, and this explains why noone cares (enough to do any"-thing" about it)
nano /etc/sudoers; # type out the whole fucking s/root/userfuckiname/
# why the fuck do i have to sudo reboot? rebooting is such a fucking vulnerability‽ it should fucking say why the fuck!
# i still haven't figured this out; i decided it's a security feature, since who the fuck knows any of this is my fucking authentication protocol
sudo grub-install /dev/mmcblk0* # somewhere on the internet it says you can just /dev/mmcblk0, or /dev/mmcblk; neither of which (actually) work; i tried all the * at the same time (one after the other; labouriously, because it doesn't support multiple whatever the fuck); it didn't work
sudo update-grub

# now i'm /protesting|campaigning/ against halt; what do we want? poweroff! (until i actually test this theory; probably never, unless poweroff doesn't work either; `halt; poweroff;`? `halt && poweroff;`?)
sudo poweroff; # it works!!! :D

# i don't think cats like raspberry pies…
# 12022 is the year of cutting my losses…
