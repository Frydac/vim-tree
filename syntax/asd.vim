syntax keyword asdKeyword enum table struct alias function
highlight link asdKeyword Keyword

syntax match asdNumber "\v<[0-9]+>"
highlight link asdNumber Number

syntax match asdString "\v\"(\\.|[^\\"])*\""
highlight link asdString String

syntax keyword asdLabel interface local serialization deserialization equivalence 
highlight link asdLabel Label

syntax keyword asdTag float uint bool vlc array tci gain txt true false null string
highlight link asdTag Tag

syntax keyword asdTypedef as of from if to else assume and or ?
highlight link asdTypedef Typedef

syntax match asdString "\v\"[a-zA-Z_0-9]*\""
highlight link asdString String

syntax match asdMacro "\vimport\s[a-zA-Z_0-9]*"
highlight link asdMacro Macro

syntax keyword asdSpecial optional public global align doc-after skip-serialization
highlight link asdSpecial Special

syntax match asdComment "\v//.*$" contains=asdTODO
highlight link asdComment Comment

syntax region asdDocstring start=/^\s*\"\"\"/ end=/\"\"\"/
highlight asdDocstring guifg='darkgrey'
"hi link asdDocstring Comment

syntax keyword asdTODO TODO FIXME
highlight link asdTODO Todo

