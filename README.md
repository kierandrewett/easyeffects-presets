# easyeffects-presets
Collection of easyeffects presets that I make and use on my devices
All of these are created based on my taste and opinion.
Sound signatures are designed to brighten the treble and boost the bass, to keep balance but enjoy those deep basses.
|Name|Description|Use case|
|-|-|-|
|ejaz-mud-redesigned (Mud Redesigned)|Extremely heavy bass, a nice shaped mid-range, crisp treble and little to no compressor interference. You might experience clipping, as the compressor isn't saving you, but actively making things worse. (note: Based on a previous profile I made to reverse Dell's attempt to force users to use MaxxAudio (which isn't available on Linux))|Speakers + subwoofers|
|ejaz-headmounted|A lighter version of Mud Redesigned, but with a downwards compressor suppressing lower frequencies to prevent clipping and other side effects.|Over-ear headphones (recommended), IEMs|

## Installation

These files are EasyEffects output presets.

### Import from EasyEffects

1. Open EasyEffects and select the **Output** tab.
2. Open the output preset menu and choose **Import preset**.
3. Select the JSON file that you want to use.

### Install with the script

Run this command from this repository:

```sh
./install.sh
```

The script detects an existing Flatpak installation and installs the presets in its data directory. Otherwise, it uses the native EasyEffects data directory.

Restart EasyEffects, or refresh its preset list, after installation.

### Install manually

For a Flatpak installation, run this command from this repository:

```sh
mkdir -p ~/.var/app/com.github.wwmm.easyeffects/data/easyeffects/output
cp -- *.json ~/.var/app/com.github.wwmm.easyeffects/data/easyeffects/output/
```

For a native installation, use:

```sh
mkdir -p ~/.local/share/easyeffects/output
cp -- *.json ~/.local/share/easyeffects/output/
```
