#!/bin/sh

if [ -f packages.txt ]; then
  sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort packages.txt))
fi
