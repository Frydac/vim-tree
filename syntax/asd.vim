syntax keyword asdKeyword enum table struct alias
highlight link asdKeyword Keyword

syntax match asdNumber "\v[0-9]+"
highlight link asdNumber Number

syntax match asdString "\v\"(\\.|[^\\"])*\""
highlight link asdString String

syntax keyword asdLabel interface local serialization deserialization
highlight link asdLabel Label

syntax keyword asdTag float uint bool vlc array tci gain txt true false null
highlight link asdTag Tag

syntax keyword asdTypedef as of from if to else assume
highlight link asdTypedef Typedef

syntax match asdString "\v\"[a-zA-Z_0-9]*\""
highlight link asdString String

syntax match asdMacro "\vimport\s[a-zA-Z_0-9]*"
highlight link asdMacro Macro

syntax keyword asdSpecial optional public global
highlight link asdSpecial Special

syntax match asdComment "\v//.*$"
highlight link asdComment Comment
