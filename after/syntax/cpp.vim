syntax match Brackets display '[(){}\[\]]'
highlight Brackets ctermfg=186 guifg=#d7d787

syntax match Operator display ' *->'

syntax match ClassName display '\<\([A-Z][a-z0-9]*\)\+\>'
syntax match ClassName display '\.\@<=\*'
"  highlight link ClassName Identifie
highlight ClassName ctermfg=73 guifg=#5fafaf

syntax match Constructor display '\(\(public\|protected\|private\)\s\+\)\@<=\([A-Z][a-z0-9]*\)\+\( *(\)\@='
highlight link Constructor PreProc

syntax match Final '\<[A-Z][A-Z0-9]\+\%(_[A-Z0-9]\+\)*\>'
highlight Final ctermfg=536

" highlight operators
syntax match _Operator "[-+&|<>=!~.,:;*%&^]"
" syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?()\[\]{}]"
highlig _Operator ctermfg=147 guifg=#afafff

" highlight methods
syntax match _Paren "?=(" contains=cParen,cCppParen
syntax match _memberFunc "\.\s*\w\+\s*(\@=" contains=_Operator,_Paren

" colors
highlight _memberFunc ctermfg=117 guifg=#87d7ff

syn match cppFunction "\<\k\+\ze("
hi link cppjavaFunction Function
highlight cppFunction ctermfg=117 guifg=#87d7ff

