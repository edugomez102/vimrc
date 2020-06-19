
syntax match Brackets display '[(){}\[\]]'
highlight Brackets ctermfg=186

syntax match Operator display ' *->'

syntax match ClassName display '\<\([A-Z][a-z0-9]*\)\+\>'
syntax match ClassName display '\.\@<=\*'
"  highlight link ClassName Identifie
highlight ClassName ctermfg=73

syntax match Constructor display '\(\(public\|protected\|private\)\s\+\)\@<=\([A-Z][a-z0-9]*\)\+\( *(\)\@='
highlight link Constructor PreProc

syntax match Final '\<[A-Z][A-Z0-9]\+\%(_[A-Z0-9]\+\)*\>'
highlight Final ctermfg=536

" highlight operators
syntax match _Operator "[-+&|<>=!~.,:;*%&^]"
" syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?()\[\]{}]"
highlig _Operator ctermfg=147

" highlight methods
syntax match _Paren "?=(" contains=cParen,cCppParen
syntax match _memberFunc "\.\s*\w\+\s*(\@=" contains=_Operator,_Paren

" colors
highlight _memberFunc ctermfg=117
"
" syn match cppFunction "\<\k\+\ze("
" hi link cppjavaFunction Function
" highlight cppFunction ctermfg=117

" syntax match pythonFunction /\v[[:alpha:]_.]+\ze(\s?\()/
" hi pythonFunction ctermfg=117

syn keyword pythonLenguage self
highlight pythonLenguage ctermfg=179

syn keyword redraw return
syn keyword redraw break
highlight redraw ctermfg=176

" syn keyword italic def
" highlight italic cterm=italic ctermfg=75

