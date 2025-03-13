#!/bin/bash

declare -A DOTFILES=(
    [.zshrc]="$HOME/.zshrc"
    [alacritty]="$HOME/.config/alacritty"
	[ranger]="$HOME/.config/ranger"
	[hypr]="$HOME/.config/hypr"
	[picom.conf]="$HOME/.config/picom.conf"
	[.dwm]="$HOME/.dwm"
)

for NAME in "${!DOTFILES[@]}"; do
    echo "Synching ${DOTFILES[$NAME]} into ./$NAME"
    cp -r "${DOTFILES[$NAME]}" "./$NAME"
done
