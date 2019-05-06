if exists("b:current_syntax")
    finish
endif

syntax region naftComment start=/\v\`+/ end=/\v\`+/

syntax region naftNode start=/\v\[/ end=/\v\]/
syntax region naftNode matchgroup=naftNodeSquareBrackets start=/\v\[/ end=/\v\]/
syntax match naftNodeCurlyBrackets /\v[\{\}]/

syntax match naftKeyValueSeparator /\v\:/ contained
syntax match naftKeyValueParens /\v[\(\)]/ contained
syntax region naftKey start=/\v\(/ end=/\v\:/ keepend contained contains=naftKeyValueSeparator,naftKeyValueParens
syntax region naftKeyValue keepend start=/\v\(/ end=/\v\)/ contains=naftKey,naftKeyValueParens

highlight link naftComment Comment

" highlight link naftNode Identifier
highlight link naftNode Constant
" highlight link naftNode Normal
" highlight link naftNode Statement
" highlight link naftNode PreProc
" highlight link naftNode Type

" highlight link naftNodeSquareBrackets PreProc
" highlight link naftNodeCurlyBrackets PreProc
highlight link naftNodeSquareBrackets Special
highlight link naftNodeCurlyBrackets Special
" highlight link naftNodeSquareBrackets Normal
" highlight link naftNodeCurlyBrackets Normal
" highlight link naftNodeSquareBrackets Type
" highlight link naftNodeCurlyBrackets Type
" highlight link naftNodeSquareBrackets Statement
" highlight link naftNodeCurlyBrackets Statement
" highlight link naftNodeSquareBrackets Constant
" highlight link naftNodeCurlyBrackets Constant

" highlight link naftKeyValueSeparator Type
" highlight link naftKeyValueParens Type
" highlight link naftKeyValueSeparator Statement
" highlight link naftKeyValueParens Statement
" highlight link naftKeyValueSeparator Constant
" highlight link naftKeyValueParens Constant
" highlight link naftKeyValueSeparator Identifier
" highlight link naftKeyValueParens Identifier
highlight link naftKeyValueSeparator Normal
highlight link naftKeyValueParens Normal
" highlight link naftKeyValueSeparator PreProc
" highlight link naftKeyValueParens PreProc
" highlight link naftKeyValueSeparator Special
" highlight link naftKeyValueParens Special
" highlight link naftKeyValueSeparator Comment
" highlight link naftKeyValueParens Comment

" highlight link naftKey Constant
highlight link naftKey Identifier
" highlight link naftKey Type
" highlight link naftKey Statement

let b:current_syntax = "naft"

"default highlight groups:
" Comment
" Constant
" Identifier
" Statement
" PreProc
" Type
" Special
" Underlined
" Error
" Todo
