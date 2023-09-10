#!/bin/sh

# Info
echo "This installation script assumes you already have a working arch install with users and drivers set up."

# Install dependencies
sudo pacman -S git man-db \
	xorg-server xorg-xinit xorg-xrandr libxft libxinerama pulseaudio \
	firefox keepassxc ranger syncthing dunst \
	zathura zathura-pdf-mupdf texlive sxiv mpv feh \
	redshift pamixer mpd mpc ncmpcpp alacritty dmenu sxhkd \
	ttf-dejavu ttf-jetbrains-mono ttf-font-awesome \
	jdk17-openjdk java17-openjfx wmname

# Spoof window manager name so java applications work
wmname LG3D

# Clone dotfiles repo


# Remake dwm and dwmblocks
cd ~/.local/src/dwm
sudo make clean install

cd ~/.local/src/dwmblocks
sudo make clean install

# Reboot the system
reboot
