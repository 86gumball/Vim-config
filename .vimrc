call plug#begin('~/.vim/plugged')

Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()

let g:loaded_matchparen = 1 " disable matching parentheses
set number
set tabstop=4               " tab width is 4 spaces
set shiftwidth=4            " indent also with 4 spaces
set expandtab               " expand tabs to spaces
set textwidth=120
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
syntax on
