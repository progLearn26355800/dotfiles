#!/bin/sh
mkdir ~/.vim
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.emacs.d ~/.emacs.d
ln -sf ~/dotfiles/zshdot/.zshrc ~/.zshrc
ln -sf ~/dotfiles/ftplugin ~/.vim/
ln -sf ~/dotfiles/toml ~/.vim/
ln -sf ~/dotfiles/temp ~/.vim/
ln -sf ~/dotfiles/.latexmkrc ~/.latexmkrc
ln -sf ~/dotfiles/ ~/.latexmkrc
ln -sf ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
sh setup_font.sh
