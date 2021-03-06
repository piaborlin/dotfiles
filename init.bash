#!/usr/bin/env bash

function _link() {
      ln -sfh $1 $2
}

# Link
_link dotfiles/.bash_profile ${HOME}/.bash_profile
_link dotfiles/.bash ${HOME}/.bash
_link dotfiles/.bashrc ${HOME}/.bashrc
_link dotfiles/.vimrc ${HOME}/.vimrc
_link dotfiles/.gitconfig ${HOME}/.gitconfig
_link dotfiles/.gitignore ${HOME}/.gitignore
_link dotfiles/.zshrc ${HOME}/.zshrc

_link ${HOME}/dotfiles/scripts/travis-script.bash /usr/local/bin/travis-script
_link ${HOME}/dotfiles/scripts/rediscloud-cli.bash /usr/local/bin/rediscloud-cli
_link ${HOME}/dotfiles/scripts/dexer.bash /usr/local/bin/dexer
_link ${HOME}/dotfiles/scripts/mindnote.bash /usr/local/bin/mindnote
_link ${HOME}/dotfiles/fish ${HOME}/.config
