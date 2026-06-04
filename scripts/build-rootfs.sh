#!/bin/bash
# KlipOS Debian rootfs builder
# Builds a minimal Debian 12 base for KlipOS

ROOTFS_DIR="/home/brando/klipper-distro/klipos-rootfs"
DEBIAN_MIRROR="http://deb.debian.org/debian"
DEBIAN_RELEASE="bookworm"

echo "========================================="
echo "KlipOS Debian Rootfs Builder"
echo "========================================="

# Create rootfs directory
mkdir -p $ROOTFS_DIR

# Stage 1 - bootstrap minimal Debian
echo "Stage 1: Bootstrapping Debian $DEBIAN_RELEASE..."
sudo debootstrap --arch=amd64 \
    --variant=minbase \
    $DEBIAN_RELEASE \
    $ROOTFS_DIR \
    $DEBIAN_MIRROR

echo "Stage 1 complete."
