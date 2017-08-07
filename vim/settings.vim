"line numbers
set number

"encoding
set encoding=utf-8
set incsearch
set hidden

"swap and backup
set nosol
set noswapfile

"change leader key
map <Space> <leader>

"remap escape
inoremap jk <ESC>

"easier movement between files
map <leader>j :bn<cr>
map <leader>k :bp<cr>

"use more intuitive move commands and move by screen lines
noremap <C-l> g$
noremap <C-h> ^
noremap <buffer><silent> j gj
noremap <buffer><silent> k gk
onoremap <silent> j gj
onoremap <silent> k gk

"XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

"latex mode
let g:tex_flavor='latex'

"treat underscores as word breaking characters
set iskeyword-=_

"indentation
set expandtab
set shiftwidth=4
set softtabstop=2

"insert matching parentheses
:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
:inoremap { {}<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

"escape parentheses with ctr+j
:inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

"paste hotkey
set pastetoggle=<F2>
