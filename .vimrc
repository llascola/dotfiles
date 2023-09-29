" Allow saving of files as sudo when I forgot to start vim using sudo.
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set relativenumber
set colorcolumn=81
let mapleader=","
colorscheme jellybeans
syntax on

"----- Pluguins -------  Require vimplug 

call plug#begin('~/.vim/plugged')

"Algo para racket... 
Plug 'wlangstroth/vim-racket'

"Air line "
Plug 'vim-airline/vim-airline'

call plug#end()

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Background color don't disappear
let &t_ut=''
