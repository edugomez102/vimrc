autocmd BufReadPost,BufWritePost *.py :NeomakeFile

" se puede mejorar
nnoremap <buffer> <F5> :exec '!clear -x && printf "\033[1;32m------------\033[0m\n" && python3' shellescape(@%, 1)<cr>

set noexpandtab " no se que pasa en python salen 4 espacios
set shiftwidth=2
set tabstop=2
