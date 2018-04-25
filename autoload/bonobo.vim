scriptencoding utf-8

let g:pub_executable = 'pub'
let g:bonobo_executable = g:pub_executable . ' global run bonobo'

augroup bonobo_autogroup
  autocmd BufNewFile,BufRead *.bnb set syntax=bnb
  autocmd BufRead *.bnb setlocal filetype=bnb
augroup END

function! bonobo#compile() abort
  cd %:p:h
  execute '!' . g:bonobo_executable . ' compile'
endfunction
