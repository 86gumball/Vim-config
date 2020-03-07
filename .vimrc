if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
    set textwidth=180

" Opening splits in different order
    set splitbelow
    set splitright

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
vnoremap <leader>$ di$ <Esc>pa $<Esc>

" Stronger h and l motions 
nnoremap H 0
nnoremap L $

" Unmapping Arrow keys
nnoremap <Left>  <nop>
inoremap <Left>  <nop>
nnoremap <Right> <nop>
inoremap <Right> <nop>
nnoremap <Up>    <nop>
inoremap <Up>    <nop>
nnoremap <Down>  <nop>
inoremap <Down>  <nop>

" Exiting insert mode with jk
inoremap <Esc> <nop>
inoremap jk    <Esc>
inoremap kj    <Esc>

" Window resizing made easier
nnoremap <silent> <leader>++ :res +7<CR>
nnoremap <silent> <leader>-- :res -7<CR>
nnoremap <silent> <leader>+ :res +2<CR>
nnoremap <silent> <leader>- :res -2<CR>

" Comment out a line
nnoremap <leader>cc 0i// <Esc>
nnoremap <leader>co 0dw

" Copy first word in line above (useful for haskell)
inoremap <leader>hc <Esc>k0ywj0Pi<space>

" Save a file and compile it to pdf with pdflatex
nnoremap <leader><CR> :w<CR>:!pdflatex %:t<CR>

inoremap && <space>&&<space>
inoremap = <space>=<space>
inoremap != <space>!=<space>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>

nnoremap <leader>ft :%s/⊥/\\bot /ge<CR>:%s/¬/\\neg /ge<CR>:%s/→/\\to /ge<CR>:%s/∨/\\vee /ge<CR>:%s/∧/\\land /ge<CR>:%s/↔/\\Leftrightarrow /ge<CR>:%s/φ/\\varphi /ge<CR>:%s/∈/\\in /ge<CR>:%s/FCP/\\mathcal{F}^{CP} /ge<CR>

nnoremap <leader>fl :s/p0/p_0/ge<CR>:s/p1/p_1/ge<CR>:s/p2/p_2/ge<CR>:s/p3/p_3/ge<CR>:s/p4/p_4/ge<CR>:s/p5/p_5/ge<CR>:s/p6/p_6/ge<CR>:s/p7/p_7/ge<CR>:s/p8/p_8/ge<CR>:s/p9/p_9/ge<CR>:s/ou/\\vee/ge<CR>:s/not/\\neg/ge<CR>:s/abs/\\bot/ge<CR>:s/not/\\neg/ge<CR>:s/and/\\land/ge<CR>:s/dimp/leftrightarrow/ge<CR>:s/imp/\\to/ge<CR>:s/npert/\\notin/ge<CR>:s/pert/\\in/ge<CR>:s/fcp/\\mathcal{F}^{CP}/ge<CR>:s/\\inence/pertence/ge<CR>

nnoremap <leader>fp :s/p0/p_0/ge<CR>:s/p1/p_1/ge<CR>:s/p2/p_2/ge<CR>:s/p3/p_3/ge<CR>:s/p4/p_4/ge<CR>:s/p5/p_5/ge<CR>:s/p6/p_6/ge<CR>:s/p7/p_7/ge<CR>:s/p8/p_8/ge<CR>:s/p9/p_9/ge<CR>

" LaTeX mappings, will be reworked into tex.snippets
" inoremap \. \cdot
" inoremap \ba \begin{align*}<CR>\end{align*}<Esc>O
" inoremap \x \times
" inoremap \la \langle
" inoremap \ra \rangle
" inoremap pi1 \pi _1
" inoremap pi2 \pi _2
" inoremap dcomp def. comp. (70)
" inoremap dproj def. proj. (77)
" inoremap dtimes def. X (75)
" inoremap did def. id (71)
