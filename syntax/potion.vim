"potion.vim
if exists("b:current_syntax")
    finish
endif

"echom "Our syntax highlighting code will go here."


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keyword
""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

highlight link potionKeyword Keyword

"It looks like highlighting keywords wipes the syntax highlighting
"However I think that if we do 'matches', we can preserve the old syntax
"highlighting.
"http://stackoverflow.com/questions/7033310/vim-custom-syntax-highlighting-background-only
highlight potionKeyword guibg=LightRed

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Function
""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax keyword potionFunction print join string

highlight link potionFunction Function

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comment
""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax match potionComment "\v#.*$"

highlight potionComment guibg=LightBlue

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Operator
""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

highlight link potionOperator Operator



let b:current_syntax = "potion"
