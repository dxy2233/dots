#!/usr/bin/env bash

kitty --class update-terminal -e sh -c 'sudo pacman -Syyu --noconfirm; read -p "✓ Done. Press Enter to exit..."'
