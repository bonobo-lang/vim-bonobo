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
