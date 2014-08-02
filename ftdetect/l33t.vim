"l33t.vim
au BufNewFile,BufRead *.pn set filetype=potion
syntax include syntax/leetpotion.vim

"ctrl+l toggles custom highlighting
"but this isn't what we really want, because what we want to do
"is to apply our highlighting **on top of** what's already there.
"Need to think about how to do this :(

function! LeetToggle()
  if(&filetype == "potion")
    set filetype=leetpotion
  elseif(&filetype == "leetpotion")
    set filetype=potion
  endif
endfunc

nnoremap <C-l> :call LeetToggle()<cr>
