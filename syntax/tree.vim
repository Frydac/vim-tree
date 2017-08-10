if exists("b:current_syntax")
    finish
endif

syntax region treeComment start=/\v\</ end=/\v\>/
highlight link treeComment Comment


syntax region treeNode start=/\v\[/ end=/\v\]/
syntax region treeNode matchgroup=treeNodeBrackets start=/\v\[/ end=/\v\]/
highlight link treeNode Constant
highlight link treeNodeBrackets Normal


" this does not work..
syntax match treeOperator "\v\:" contained
highlight link treeOperator Title

syntax region treeKeyValue start="\v\(" end="\v\)" 
syntax region treeKeyValue matchgroup=treeParens start="\v\(" end="\v[\:\)]" contains=treeOperator
highlight link treeKeyValue Identifier


let b:current_syntax = "tree"
