#!/opt/redacted/bin/bash

TARGET="/hyperjail/initramfs_images/output.gz"

cd /opt/honeypot/rebuild_honeypot/chrootify

find . | cpio -R root:root -H newc -o | gzip > $TARGET

# some info about the new image
stat $TARGET
