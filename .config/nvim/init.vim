:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set smarttab
:set softtabstop=2
:set mouse=a
:set colorcolumn=81

call plug#begin()

Plug 'jiangmiao/auto-pairs'  " auto pairs
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
"Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim',  {'branch': 'release'} " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
"Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
"Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Highlight 

call plug#end()

"nnoremap <C-f> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

" :set nohlsearch
"""Start Coc config"""
:set updatetime=300


:luafile ~/.config/nvim/script.lua

" Configuración para Haskell
autocmd FileType haskell setlocal expandtab   " Usar espacios en lugar de tabulaciones
autocmd FileType haskell setlocal shiftwidth=2 " Tamaño de la sangría
autocmd FileType haskell setlocal softtabstop=2 " Tamaño de la sangría al presionar <Tab>
autocmd FileType haskell setlocal tabstop=2    " Tamaño de la tabulación
autocmd FileType haskell setlocal encoding=utf-8 " Codificación UTF-8

