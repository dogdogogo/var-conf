" ===
" === vim-translator
" ===

let g:translator_source_lang='auto'
let g:translator_target_lang='zh'
" let g:translator_default_engines=['google', 'bing']
let g:translator_default_engines=['google']
" let g:translator_proxy_url='socks5://172.16.188.1:1080'
 let g:translator_proxy_url='socks5://127.0.0.1:9980'
let g:translator_history_enable=1
let g:translator_window_type='preview'

nnoremap <leader>tt :Translate<cr>
vnoremap <leader>tt :Translate<cr>
nnoremap <leader>tw :TranslateW<cr>
vnoremap <leader>tw :TranslateW<cr>
nnoremap <leader>tr :TranslateR<cr>
vnoremap <leader>tr :TranslateR<cr>
nnoremap <leader>tc :TranslateX<cr>
vnoremap <leader>tc :TranslateX<cr>
nnoremap <leader>th :TranslateH<cr>
vnoremap <leader>th :TranslateH<cr>
nnoremap <leader>tl :TranslateL<cr>
vnoremap <leader>tl :TranslateL<cr>

nnoremap <silent><expr> <M-f> translator#window#float#has_scroll() ?
                            \ translator#window#float#scroll(1) : "\<M-f>"
nnoremap <silent><expr> <M-b> translator#window#float#has_scroll() ?
                            \ translator#window#float#scroll(0) : "\<M-f>"

" Text highlight of translator window
hi def link TranslatorQuery             Identifier
hi def link TranslatorDelimiter         Special
hi def link TranslatorExplain           Statement

" Background of translator window border
hi def link Translator                  Normal
hi def link TranslatorBorder            NormalFloat

