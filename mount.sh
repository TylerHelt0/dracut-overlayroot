	mkdir -p /run/overlayroot/{u,w,rootfs}
	chmod -R 700 /run/overlayroot
	mount --bind /sysroot /run/overlayroot/rootfs
	mount -t overlay overlayroot -o lowerdir=/sysroot,upperdir=/run/overlayroot/u,workdir=/run/overlayroot/w /sysroot
	return 0
