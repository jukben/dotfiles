" Plugins!
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'YorickPeterse/happy_hacking.vim'

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
