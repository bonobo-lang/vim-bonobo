scriptencoding utf-8

let g:pub_executable = 'pub'
let g:bonobo_executable = g:pub_executable . ' global run bonobo'

function! bonobo#compile() abort
  cd %:p:h
  execute '!' . g:bonobo_executable . ' compile'
endfunction
