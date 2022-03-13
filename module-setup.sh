#!/bin/ash

check() {
    return 0
}

depends() {
    return 0
}

install () {
    inst_hook pre-pivot 50 $moddir/mount.sh
    }
