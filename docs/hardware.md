# KlippOS Hardware Compatibility

This document tracks tested hardware. If you test KlippOS on a device please open a PR or issue to add it here.

## Status Legend

| Symbol | Meaning |
|--------|---------|
| ✅ | Fully working |
| ⚠️ | Partially working - see notes |
| ❌ | Not working |
| 🔧 | Working with manual fixes |

## Tested Laptops

| Make/Model | CPU | GPU | RAM | Boot | Display | WiFi | Trackpad | Status | Notes |
|------------|-----|-----|-----|------|---------|------|----------|--------|-------|
| Lenovo ThinkPad T61 | Intel Core 2 Duo T7300 | Nvidia Quadro NVS 140M | 2GB | BIOS | ⚠️ | ❓ | ❓ | 🔧 | Base system boots, X11 GPU driver WIP |

## Tested Desktops

| Make/Model | CPU | GPU | RAM | Boot | Display | Status | Notes |
|------------|-----|-----|-----|------|---------|--------|-------|
| None yet | | | | | | | |

## Known Issues by Hardware

### Nvidia GPU (Nouveau driver)
- Older Nvidia GPUs (pre-Kepler) may have issues with the nouveau driver
- Workaround: Boot with `systemd.unit=multi-user.target` and configure manually

### Intel Legacy Graphics (pre-HD)
- GMA 950/965 chips need `i915` kernel module
- Should work with current kernel config

### AMD/ATI
- Not yet tested
- ATI Radeon and AMDGPU drivers included in kernel

## Minimum Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| CPU | x86_64, 1GHz | Dual core 2GHz+ |
| RAM | 1GB | 2GB+ |
| Storage | 4GB | 8GB+ |
| Display | 800x600 | 1024x768+ |

## Adding Your Hardware

Please open an issue at https://github.com/Brando8383/klippos/issues with:
- Make and model
- CPU, GPU, RAM
- Boot method (BIOS/UEFI)
- What works and what doesn't
- Any fixes you applied
