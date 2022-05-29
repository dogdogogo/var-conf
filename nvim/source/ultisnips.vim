" ===
" ++++ UltiSnips
" ===


let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetDirectories=["${HOME}/.config/nvim/UltiSnips", "UltiSnips"]

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

autocmd FileType cpp :UltiSnipsAddFiletypes cpp.c

