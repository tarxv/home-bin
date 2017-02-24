#!/bin/sh
# usage: update_boot.sh initrd.img-4.8.0-36-generic vmlinuz-4.8.0-36-generic.efi.signed'
if [ ! $(whoami) = 'root' ]; then
echo 'be root'
exit 0
fi
! mount|grep -q '/dev/sda8' && mount /dev/sda8 /mnt/boot
cp /boot/"$1" /mnt/boot/initrd.img-xenial-generic
cp /boot/"$2" /mnt/boot/vmlinuz-xenial-generic.efi.signed
echo copied!
