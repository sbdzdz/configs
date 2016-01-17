"pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

"easymotion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-s2)
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen
hi link EasyMotionMoveHL Search

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

"switch gg and G to be more intuitive
noremap gg G
noremap G gg

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
