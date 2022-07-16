This is a module for dracut that will boot your system into a rootfs with a tmpfs overlayfs on top of it. 

The module does this directly before dracut performs chroot into the real root filesystem. 

To enable the module, place it into `/usr/lib/dracut/modules.d` and add `overlayroot=1` to your kernel cmdline. 

`overlayroot=0` will prevent the overlay from being mounted. This is the default behavior. 

`/run/overlayroot` will contain all files for the overlay.

The root filesystem is moved `/run/overalyroot/rootfs`, the upper and lower dirs of the overlay are also in the overlayroot folder. 

While this was designed for Arch Linux, it will work for any system that uses Dracut as initramfs.
