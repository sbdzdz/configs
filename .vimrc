execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
colorscheme Monokai-Refined
syntax on

"encoding
set encoding=utf-8
set incsearch
set hidden

"swap and backup
set nosol
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
noremap <buffer><silent> j gj
noremap <buffer><silent> k gk
onoremap <silent> j gj
onoremap <silent> k gk

"color
set t_Co=256
if &term =~ '256color'
	set t_ut=
endif

"XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

"latex mode
let g:tex_flavor='latex'

"easymotion
nmap <leader>s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

"enter/shift+enter to insert a blank line below/above
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"treat underscores as word breaking characters
set iskeyword-=_
