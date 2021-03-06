" ===
" ++++ coc
" ===

set hidden
set cmdheight=1
set updatetime=100
set shortmess+=c

let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-clangd',
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-snippets',
      \ 'coc-pyright',
      \ 'coc-html',
      \ ]

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Symbol renaming.
" nmap <leader>ln <Plug>(coc-rename)

" vim-jsonc, like vscode
augroup jsonc_format
  autocmd!
  autocmd FileType json syntax match Comment +\/\/.\+$+
augroup END

" coc-snippets
imap <c-j> <Plug>(coc-snippets-expand)

" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

