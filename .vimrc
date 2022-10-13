" " I'm Fish
" set shell=/bin/bash

" Plugins!
call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Setting
set nocompatible              " be iMproved, required
filetype off                  " required

" Update time for gitgutter
set updatetime=250
" Colours
colorscheme nord 
" Show numbers
set number
" Show statusline
set laststatus=2
" Highlight code
syntax on
" NERDTree
map <C-n> :NERDTreeToggle<CR>
" Mouse on
set mouse=a
" Clipboard
set clipboard=unnamed
" Make backspace work as intended
set backspace=indent,eol,start
" set Search Highlight by default on 
set hls
" Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Map Ctrl Copy-paste
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
" Use FZF together with NERDTree
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
