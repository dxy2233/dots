#!/bin/bash

DOTFILES_DIR=$(pwd)

[ ! -L ~/.config/hypr ] && ln -sf $DOTFILES_DIR/configs/hypr ~/.config/hypr
[ ! -L ~/.config/waybar ] && ln -sf $DOTFILES_DIR/configs/waybar ~/.config/waybar
[ ! -L ~/.config/eww ] && ln -sf $DOTFILES_DIR/configs/eww ~/.config/eww

[ ! -L ~/.config/kitty ] && ln -sf $DOTFILES_DIR/configs/kitty ~/.config/kitty
[ ! -L ~/.config/wofi ] && ln -sf $DOTFILES_DIR/configs/wofi ~/.config/wofi
