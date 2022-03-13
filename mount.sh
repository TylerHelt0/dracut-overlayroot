if ! getargbool 1 overlayroot -d -n rd_NO_OVERLAY; then
	info "Overlayroot not activated"
	return 0
else
	info "Activating Overlayroot"
	mkdir -p /run/overlayroot/{u,w,rootfs,update} || info "Overlayroot folder creation failed" && return 1

	info  "Moving sysroot to /run/overlayroot"
	if mount --make-private /; then   
		mount --move /sysroot /run/overlayroot/rootfs || info "Moving sysroot failed (2)" && return 1
		return 0
		else
			info "Moving sysroot failed (1)" 
			return 1
	fi

	info "Mounting Overlayroot"
	mount -t overlay overlayroot -o lowerdir=/run/overlayroot/rootfs,upperdir=/run/overlayroot/u,workdir=/run/overlayroot/w /sysroot || info "Overlayroot mount failed" && return 1

	info "Overlayroot mounted successfully probably"
	return 0
fi
