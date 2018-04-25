" Vim syntax file " Language: Bonobo

if !exists('g:main_syntax')
  if version < 600
    syntax clear
  elseif exists('b:current_syntax')
    finish
  endif
  let g:main_syntax = 'bnb'
  syntax region bnbFold start="{" end="}" transparent fold
endif

syntax keyword bnbFunction fn get set
syntax keyword bnbType enum type class
syntax keyword bnbControlFlow in if elif else throw break ret while for
syntax keyword bnbBoolean true false
syntax keyword bnbModifier hide

" Expressions
syntax match bnbNumber "\<\d+\(\.\d\+\)\=\>"

" Comments
syntax match bnbComment start="/\*" end="\*/" contains=dartComment

" Default highlights
highlight default link bnbNumber Number
highlight default link bnbComment Comment
highlight default link bnbFunction Keyword
highlight default link bnbType Keyword
highlight default link bnbControlFlow Keyword
highlight default link bnbBoolean Boolean
highlight default link bnbModifier Keyword
