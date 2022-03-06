	mkdir -p /run/overlayroot/{u,w,rootfs}
	mount -t overlay overlayroot -o lowerdir=/sysroot,upperdir=/run/overlayroot/u,workdir=/run/overlayroot/w /sysroot
	return 0
