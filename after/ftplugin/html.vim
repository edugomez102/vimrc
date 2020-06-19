setlocal tabstop=2
setlocal shiftwidth=2

" let g:UltiSnipsExpandTrigger="<f2>"
" let g:user_emmet_leader_key="<tab>"
nmap <F5> :w <bar> :NeomakeSh /home/edu102/bin/refresh<cr>
nmap <leader>ww :w! <bar> :NeomakeSh /home/edu102/bin/refresh<cr>

hi MatchParen ctermbg=none ctermfg=96
