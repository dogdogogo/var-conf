" ===
" ++++ auto
" ===

function SetIndentC()
  setlocal foldmethod=manual
  nnoremap <buffer> zz zfa{
  nnoremap <buffer> zO zR
endfunction

function SetIndentPy()
  setlocal foldmethod=manual
endfunction

augroup set_indent
  autocmd!
  autocmd BufRead,BufNewFile *.c,*.cpp :call SetIndentC()
  autocmd BufRead,BufNewFile *.py :call SetIndentPy()
augroup END
