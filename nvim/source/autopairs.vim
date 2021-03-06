" ===
" ++++ auto-pairs
" ===

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = ''
let g:AutoPairsShortcutToggle = '<M-a>'
nmap å <m-a>
let g:AutoPairsShortcutFastWrap = '<M-w>'
imap ∑ <m-w>
let g:AutoPairsShortcutJump = '<c-l>'
imap ¬ <m-l>

" pay attension to <>
let g:AutoPairs = {
      \ '(':')',
      \ '[':']',
      \ '{':'}',
      \ '\w\zs<':'>',
      \ "'":"'",
      \ '"':'"',
      \ "`":"`",
      \ '```':'```',
      \ '"""':'"""',
      \ "'''":"'''",
      \ }

let g:AutoPairsMapBS = 1
let g:AutoPairsMultilineClose = 0
"() Map <c-h> to delete brackets, quotes in pair
let g:AutoPairsMapCh = 0
let g:AutoPairsMapCR = 1
let g:AutoPairsCenterLine = 1
let g:AutoPairsMapSpace = 0
let AutoPairsMoveCharacter = "()[]{}<>\"'"

augroup setBracketTest
  autocmd!
  autocmd FileType text let b:AutoPairs = AutoPairsDefine({'<!--' : '-->'}, ["`"])
augroup END

