colorscheme Monokai-Refined
filetype plugin indent on
syntax on
set encoding=utf-8
set incsearch
set hidden
se nosol
let mapleader = "\<Space>"
let g:tex_flavor='latex'
inoremap jk <ESC>
map <leader>j :bn<cr>
map <leader>k :bp<cr>
noremap gg G
noremap G gg
map <C-l> $
map <C-h> 0
map <C-j> L
map <C-k> H
set t_Co=256
set t_ut=
set grepprg=grep\ -nH\ $*
function! ScreenMovement(movement)
   if &wrap
      return "g" . a:movement
   else
      return a:movement
   endif
endfunction
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")
