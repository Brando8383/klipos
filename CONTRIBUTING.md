# Contributing to KlippOS

Thank you for your interest in contributing to KlippOS! This document explains how to get involved.

## Ways to Contribute

- **Test on hardware** — Flash KlippOS and report results on your hardware
- **Bug reports** — Open a GitHub issue with details about what went wrong
- **Hardware compatibility** — Add your tested hardware to the compatibility list
- **Code** — Fix bugs, add features, improve scripts
- **Documentation** — Improve guides, add examples, fix typos

## Reporting Bugs

Open an issue at https://github.com/Brando8383/klippos/issues and include:

- Hardware specs (CPU, GPU, RAM)
- What you expected to happen
- What actually happened
- Any error messages or logs
- Contents of `/home/klippos/klippos-setup.log` if available

## Development Setup

```bash
# Clone the repo
git clone https://github.com/Brando8383/klippos.git
cd klippos

# Build requirements (Ubuntu 22.04 or Debian 12)
sudo apt install debootstrap genimage mtools libelf-dev libncurses-dev grub-pc-bin parted rsync

# Full build (takes 1-2 hours first time)
sudo bash build.sh
```

## Project Structure
klippos/
├── build.sh                      # Master build script
├── board/klippos/
│   ├── genimage.cfg              # Disk image partition layout
│   ├── grub.cfg                  # Bootloader config
│   ├── post-build.sh             # Buildroot post-build hook
│   ├── post-image.sh             # Image assembly hook
│   └── overlay/                  # Files injected into rootfs
├── configs/
│   ├── klippos_defconfig         # Buildroot kernel config
│   └── klippos_kernel_config     # Linux kernel config
├── docs/                         # Documentation
└── scripts/
├── build-rootfs.sh           # Debian rootfs builder
└── firstboot/                # First boot scripts

## Pull Request Guidelines

- One feature or fix per PR
- Test your changes on real hardware if possible
- Update documentation if needed
- Keep commit messages clear and descriptive

## Hardware Testing

If you test KlippOS on hardware please open an issue or PR to add it to the 
hardware compatibility list in `docs/hardware.md` with:

- Make and model
- CPU
- GPU
- RAM
- Boot method (BIOS/UEFI)
- Status (Working/Partial/Not working)
- Any quirks or fixes needed

## Code Style

- Bash scripts use 4 space indentation
- Always use `set -e` in scripts
- Add comments for non-obvious logic
- Test with `bash -n script.sh` before committing

## License

KlippOS is open source. By contributing you agree your contributions 
will be licensed under the same license as the project.
