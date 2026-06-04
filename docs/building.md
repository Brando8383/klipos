# Building KlipOS from Source

## Requirements

- Ubuntu 22.04 or Debian 12 host machine
- At least 50GB free disk space
- At least 8GB RAM
- Internet connection for initial build

## Quick Build

```bash
git clone https://github.com/Brando8383/klipos.git
cd klipos
sudo ./build.sh
```

The build will take 1-2 hours on first run. The final image will be at `output/klipos.img`.

## Flashing

```bash
sudo dd if=output/klipos.img of=/dev/sdX bs=4M status=progress && sync
```

Replace `/dev/sdX` with your USB drive or target disk. **Be careful to select the correct device.**

## First Boot

1. Boot the target laptop from the KlipOS USB or disk
2. KlipOS will boot into a setup screen on first boot
3. Connect to WiFi when prompted
4. KIAUH will automatically install Klipper, Moonraker, and Fluidd
5. After installation completes the system will reboot into the Fluidd kiosk

## Default Credentials

- Username: `klipos`
- Password: `klipos`
- Root password: `klipos`

**Change these on first boot for security.**

## Build Components

| Component | Version | Notes |
|-----------|---------|-------|
| Linux Kernel | 6.6 LTS | Built with Buildroot |
| Debian | 12 (Bookworm) | Minimal base |
| GRUB | 2 | BIOS + UEFI support |
| Klipper | Latest | Installed via KIAUH |
| Moonraker | Latest | Installed via KIAUH |
| Fluidd | Latest | Installed via KIAUH |
| Chromium | Latest | Kiosk browser |

## Manual Build Steps

If you prefer to build manually or need to customize the build:

### 1. Build the kernel
```bash
cd buildroot-2024.02
cp ../klipos/configs/klipos_defconfig .config
make
```

### 2. Build the Debian rootfs
```bash
sudo bash scripts/build-rootfs.sh
```

### 3. Assemble the image
```bash
sudo bash board/klipos/post-image.sh output/images
```

## Customization

- Kernel config: `configs/klipos_defconfig`
- Rootfs packages: `scripts/build-rootfs.sh`
- First boot setup: `scripts/firstboot/klipos-setup.sh`
- Display session: `scripts/firstboot/klipos-session.sh`
- GRUB config: `board/klipos/grub.cfg`
- Filesystem overlay: `board/klipos/overlay/`
