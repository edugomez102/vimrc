" Default highlight java
" let java_comment_strings=1 
let java_highlight_functions=1 
let java_highlight_java_lang_ids=1 
let java_highlight_all = 1

" If you are trying this at runtime, you need to reload the syntax file
" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" augroup java
	" au!
	autocmd FileType java setlocal omnifunc=javacomplete#Complete
	autocmd BufReadPost,BufWritePost *.java :NeomakeFile
" augroup end


" nnoremap <buffer> <F5> :!javac *.java && java %:r<cr>

nnoremap <buffer> <F5> :!clear -x && printf "\033[1;32m------------\033[0m\n" && javac *.java && java %:r<cr>
