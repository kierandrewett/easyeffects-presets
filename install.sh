#!/bin/sh

set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
flatpak_dir=${HOME}/.var/app/com.github.wwmm.easyeffects/data/easyeffects/output
native_dir=${XDG_DATA_HOME:-${HOME}/.local/share}/easyeffects/output

if [ -d "$flatpak_dir" ] || {
    command -v flatpak >/dev/null 2>&1 &&
    flatpak info com.github.wwmm.easyeffects >/dev/null 2>&1
}; then
    preset_dir=$flatpak_dir
else
    preset_dir=$native_dir
fi

mkdir -p "$preset_dir"
install -m 0644 -- "$repo_dir"/*.json "$preset_dir/"
printf 'Installed EasyEffects output presets in %s\n' "$preset_dir"
