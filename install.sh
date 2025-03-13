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
    echo "Installing ./$NAME to ${DOTFILES[$NAME]}"
	if test -f ${DOTFILES[$NAME]}; then
		echo "Creating backup of ${DOTFILES[$NAME]}"
		mv "${DOTFILES[$NAME]}" "${DOTFILES[$NAME]}.bak"
	fi
    cp -r "./$NAME" "${DOTFILES[$NAME]}"
done
