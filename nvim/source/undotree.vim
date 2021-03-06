" ===
" ++++ undotree
" ===

nnoremap <leader>u :UndotreeToggle<cr>

" Save the changes made in the current file to the specified file, the next time you open the same file, the previous changes can still be restored
if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

let g:undotree_WindowLayout=4
let g:undotree_ShortIndicators = 1
let g:undotree_SplitWidth = 30
let g:undotree_DiffpanelHeight = 12

let g:undotree_DiffAutoOpen=1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_DiffCommand='diff'
let g:undotree_RelativeTimestamp = 1
let g:undotree_HighlightChangedText = 1
let g:undotree_HighlightChangedWithSign = 1
let g:undotree_HelpLine = 1

function g:Undotree_CustomMap()
  nmap <buffer> J 3j
  nmap <buffer> K 3k
endfunction


