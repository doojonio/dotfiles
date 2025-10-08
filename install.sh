#!/usr/bin/env bash
RANGER_DIR="$HOME/.config/ranger/"
KITTY_DIR="$HOME/.config/kitty/"
CUR_DIR=`pwd`

# rc files
ln -sf $CUR_DIR/.vimrc $HOME/;
ln -sf $CUR_DIR/.screenrc $HOME/;
ln -sf $CUR_DIR/.inputrc $HOME/;
perl scripts/append_bashrc_suffix.pl

# vim snips
mkdir -p ~/.vim/
ln -sf $CUR_DIR/UltiSnips ~/.vim/

# ranger
mkdir -p $RANGER_DIR && \
ln -sf $CUR_DIR/rc.conf $RANGER_DIR && \
ln -sf $CUR_DIR/rifle.conf $RANGER_DIR;

# kitty
mkdir -p $KITTY_DIR && \
ln -sf $CUR_DIR/kitty.conf $KITTY_DIR
