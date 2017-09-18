#!/usr/bin/env bash

function _link() {
      ln -sfh $1 $2
}

# Link
_link dotfiles/.vimrc ${HOME}/.vimrc
_link dotfiles/.gitconfig ${HOME}/.gitconfig
