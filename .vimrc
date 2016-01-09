"colorscheme
colorscheme Monokai-Refined
filetype plugin indent on
syntax on

"encoding
set encoding=utf-8
set incsearch
set hidden

"set nosol
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

"use more intuitive move commands
map <C-l> $
map <C-h> 0
map <C-j> L
map <C-k> H

"color issues
set t_Co=256
if &term =~ '256color'
	set t_ut=
endif

"move by screen lines
function! ScreenMovement(movement)
   if &wrap
      return "g" . a:movement
   else
      return a:movement
   endif
endfunction
let g:tex_flavor='latex'
