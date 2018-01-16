" I'm Fish
set shell=/bin/bash

" Plugins!
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'YorickPeterse/happy_hacking.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Setting

set nocompatible              " be iMproved, required
filetype off                  " required

" Update time for gitgutter
set updatetime=250
" Colours
colorscheme happy_hacking
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
" Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Use FZF together with NERDTree
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
