"theme
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
syntax on

"set airline theme
let g:airline_theme='solarized'

"color
set t_Co=256
if &term =~ '256color'
	set t_ut=
endif
