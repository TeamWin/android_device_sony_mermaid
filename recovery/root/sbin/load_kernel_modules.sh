#!/sbin/sh

SLOT=`getprop ro.boot.slot_suffix`
mount /dev/block/bootdevice/by-name/vendor$SLOT /vendor -o ro
cp /vendor/lib/modules/nt36xxx_driver.ko /sbin
umount /vendor
insmod /sbin/nt36xxx_driver.ko
