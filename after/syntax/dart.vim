syntax match Brackets display '[(){}\[\]]'
highlight Brackets ctermfg=186

" highlight operators
syntax match _Operator "[-+&|<>=!~.,:;*%&^]"
highlig _Operator ctermfg=147

syn keyword dartLanguage extends
highlight dartLanguage ctermfg=117

" " highlight methods
" syntax match _Paren "?=(" contains=cParen,cCppParen
" syntax match _memberFunc "\.\s*\w\+\s*(\@=" contains=_Operator,_Paren
"
" " colors
" highlight _memberFunc ctermfg=117
"
" syn match cppFunction "\<\k\+\ze("
" hi link cppjavaFunction Function
" highlight cppFunction ctermfg=117
"
