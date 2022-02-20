for p in $(getargs overlayroot=); do

if [ "${p}" -eq 1 ]  then;
	mkdir -p /run/overlayroot/{u,w}
	mount -t overlay overlayroot -o lowerdir=/sysroot,upperdir=/run/overlayroot/u,workdir=/run/overlayroot/w /sysroot
	echo "Ovelay root mounted"
	return 0
else 
	echo "Overlayroot not enabled"
	return 0
fi
