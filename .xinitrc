#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

## Start some nice programs ##
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

## Stuff ##
/usr/bin/polkit-dumb-agent &

## Start XBindkeys ##
## To Fix Mouse Back / Forward Not Working In PCManFM Detailed View ##
xbindkeys &

## Start Audio (PipeWire) ##
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &

## Start Music Player Daemon ##
mpd --kill &
mpd &

## Background ##
bgs ~/.wallpapers/japan-river.jpg &

## Redshift ##
redshift -P -O 3500 &

## Window Managers ##

#exec 2bwm & kitty
#exec icewm-session -n
#exec cwm & kitty
#exec openbox
#exec worm & kitty
exec startfluxbox

