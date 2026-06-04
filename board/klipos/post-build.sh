#!/bin/bash
# KlipOS post-build script
# Runs after Buildroot assembles the rootfs

TARGET_DIR=$1

echo "Running KlipOS post-build script..."

# Enable klipos-setup service on first boot
mkdir -p $TARGET_DIR/etc/systemd/system/multi-user.target.wants
ln -sf /etc/systemd/system/klipos-setup.service \
    $TARGET_DIR/etc/systemd/system/multi-user.target.wants/klipos-setup.service

echo "KlipOS post-build complete."
