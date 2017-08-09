" gitgutter
let g:gitgutter_realtime = 750
let g:gitgutter_eager = 750

" ctrlp (use rg over grep)
if executable('rg')
  set grepprg=rg\ --vimgrep
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
