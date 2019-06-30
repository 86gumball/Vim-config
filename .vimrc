" Plugins
call plug#begin('~/.vim/plugged')

Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'christophermca/meta5'

call plug#end()

" Leader key
    let mapleader = ","
    let maplocalleader = ";"

" Basics
    set nocompatible
    syntax on
    set ruler                   " display cursor position
    set number relativenumber   " side bar with relative numbers
    let g:loaded_matchparen = 1 " disable matching parentheses

" Color Scheme
    colorscheme meta5           " christophermca/meta5's color scheme
    
" Identation
    set autoindent              " use identation of previous line
    set smartindent             " use smart indentation for programming languages (like C)

" Tabs
    set tabstop=4               " tab width is 4 spaces
    set shiftwidth=4            " indent also with 4 spaces
    set expandtab               " expand tabs to spaces
    set textwidth=120

 
"""""""""""""""""""Mappings"""""""""""""""""""

" Swap a line with the line above
nnoremap <leader>k :m-2<CR>==
xnoremap <leader>k :m-2<CR>gv=gv

" Swap a line with the line bellow
nnoremap <leader>j :m+<cr>==
xnoremap <leader>j :m'>+<cr>gv=gv

" Upper case a word in insert mode
inoremap <C-u> <Esc>WBvEUEa

" Open .vimrc in a split window / Sourcing the content of .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Quote a word
nnoremap <leader>" viw<Esc>li"<Esc>bi"<Esc>
nnoremap <leader>' viw<Esc>li'<Esc>bi'<Esc>

" Quote a visual selection
vnoremap <leader>" di"<Esc>pa"<Esc>
vnoremap <leader>' di'<Esc>pa'<Esc>
vnoremap <leader>( di(<Esc>pa)<Esc>

" Stronger h and l motions 
nnoremap H 0
nnoremap L $

"""""""""""""""""""Abbreviations"""""""""""""""""""
iabbrev iab iabbrev
iabbrev ii0 int i = 0
iabbrev esq <Esq>
