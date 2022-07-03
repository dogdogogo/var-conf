" ===
" ++++ function
" ===

noremap <leader>r :call RunCode()<cr>

func RunCode()
  exec "w"
  let file_type = &ft
  if file_type == 'markdown'
    exec "MarkdownPreviewToggle"
  elseif file_type == 'c'
    set splitbelow
    :sp
    :res -5
    term gcc-11 % -o %< && ./%< && rm -rf %<
  elseif file_type == "cpp"
    set splitbelow
    :sp
    :res -5
    term g++-11 % -o %< && ./%< && rm -rf %<
  elseif file_type == "python"
    set splitbelow
    :sp
    :res -5
    term python3.9 %
  elseif file_type == "lua"
    set splitbelow
    :sp
    :res -5
    term lua %
  elseif file_type == "makrdown"
    exec "MarkdownPreviewToggle"

  endif
endfunc
