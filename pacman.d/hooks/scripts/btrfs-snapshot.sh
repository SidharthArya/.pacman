#!/bin/bash
DATE=$(date +"%Y-%m-%d")
/usr/bin/btrfs subvolume snapshot -r / /.snapshots/$DATE &&
	grub-mkconfig -o /boot/grub/grub.cfg;
exit 0
