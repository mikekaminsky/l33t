"l33t.vim
if exists("b:current_syntax")
    finish
endif

"syntax keyword potionKeyword to times
"highlight link potionKeyword Keyword
echom "Our syntax highlighting code will go here."

let b:current_syntax = "potion"
