# Profile file. Runs on login. Environmental variables are set here.

export ZDOTDIR="$HOME/.config/zsh"

## Themes ##

export GTK_THEME=gruvbox-64
export QT_QPA_PLATFORMTHEME=qt5ct
	
## Set Micro as Default Editor ##

export EDITOR=micro
export VISUAL=micro

## Man syntax high-lighting ##

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

## NVidia ##

#export GBM_BACKEND=nvidia-drm
#export __GLX_VENDOR_LIBRARY_NAME=nvidia
#export WLR_NO_HARDWARE_CURSORS=1
