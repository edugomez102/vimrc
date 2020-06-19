syntax match Brackets display '[(){}\[\]]'
highlight Brackets ctermfg=186
" highlight Brackets ctermfg=15

syntax match Operator display ' *->'

syntax match ClassName display '\<\([A-Z][a-z0-9]*\)\+\>'
syntax match ClassName display '\.\@<=\*'
"  highlight link ClassName Identifie
highlight ClassName ctermfg=73

"  syntax match Title /[A-Z]/
" syntax match Title /[A-Z]\{2,\}/
" syntax match Title "/\v<[A-Z]+>"
"  hi Title ctermfg=3

syntax match Constructor display '\(\(public\|protected\|private\)\s\+\)\@<=\([A-Z][a-z0-9]*\)\+\( *(\)\@='
highlight link Constructor PreProc

syntax match Final '\<[A-Z][A-Z0-9]\+\%(_[A-Z0-9]\+\)*\>'
highlight Final ctermfg=9

syn match javaAnnotation "@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"

syn keyword javaLenguage new
highlight javaLenguage ctermfg=176

" syn match javaFunction "\<\k\+\ze("
" hi link javaFunction Function
" highlight Function ctermfg=161

" highlight operators
syntax match _Operator "[-+&|<>=!~.,:;*%&^]"
highlig _Operator ctermfg=147

" highlight methods
syntax match _Paren "?=(" contains=cParen,cCppParen
syntax match _memberFunc "\.\s*\w\+\s*(\@=" contains=_Operator,_Paren

" colors
highlight _memberFunc ctermfg=117




" syn match javaFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
" highlight javaFuncDef ctermfg=9

