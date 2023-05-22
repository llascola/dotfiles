" Allow saving of files as sudo when I forgot to start vim using sudo.
set number
set tabstop=2
set shiftwidth=4
set expandtab
set relativenumber
let mapleader=","
colorscheme jellybeans
syntax on

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:jellybeans_use_lowcolor_black = 0
