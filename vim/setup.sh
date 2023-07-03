#!/bin/sh

# NerdTree
# https://github.com/preservim/nerdtree
git clone git@github.com:preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# Color Scheme
# https://github.com/joshdick/onedark.vim
git clone git@github.com:joshdick/onedark.vim.git ~/.vim/pack/onedark/opt/onedark.vim

# Kotlin Syntax Highlighting
# https://github.com/udalov/kotlin-vim
git clone https://github.com/udalov/kotlin-vim.git ~/.vim/pack/plugins/start/kotlin-vim
