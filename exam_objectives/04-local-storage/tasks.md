# 04 - Configure Local Storage

## Task 1: LVM Setup
Create a logical volume named `devops_lv` with 32 extents using /dev/vdb.

- Volume Group: `devops_vg` with 20MB physical extents
- Format as ext4
- Mount persistently at `/mnt/devops_lv`

## Task 2: Swap Volume
From /dev/vdb, create an 800MB swap partition and configure it to mount persistently.

All changes must survive reboot.
