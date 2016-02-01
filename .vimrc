"pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

"colorscheme
colorscheme Monokai-Refined
syntax on

"encoding
set encoding=utf-8
set incsearch
set hidden

se nosol
set noswapfile

"change leader key
let mapleader = "\<Space>"

"remap escape
inoremap jk <ESC>

"easier movement between files
map <leader>j :bn<cr>
map <leader>k :bp<cr>

"use more intuitive move commands and move by screen lines
noremap <C-l> g$
noremap <C-h> g0
noremap <C-j> L
noremap <C-k> H
noremap <buffer><silent> j gj
noremap <buffer><silent> k gk
onoremap <silent> j gj
onoremap <silent> k gk

"color issues
set t_Co=256
if &term =~ '256color'
	set t_ut=
endif

"latex mode
let g:tex_flavor='latex'

"easymotion
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

"treat underscores as word breaking characters
set iskeyword-=_
