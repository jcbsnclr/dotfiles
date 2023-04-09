#!/usr/bin/env sh
cp -r config/* $HOME/.config/
cp tmux.conf $HOME/.tmux.conf
cp profile $HOME/.profile
cp ashrc $HOME/.ashrc
cp -r themes/* ~/.themes/

mkdir -p $HOME/net/down $HOME/net/share 
mkdir -p $HOME/docs/templates 
mkdir -p $HOME/media/music $HOME/media/videos $HOME/media/pictures

cp -r wallpapers/* $HOME/media/pictures/wallpapers
