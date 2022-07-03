" ===
" ++++ normal settings
" ===
set nu
syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set scrolloff=6
set history=1000
set mouse=a
set encoding=utf-8
set laststatus=2
set autochdir
set hlsearch
set incsearch
set ignorecase
set smartcase
set hidden
set wrap
set textwidth=80
set nocompatible
filetype plugin indent on
set clipboard+=unnamedplus
set encoding=utf-8
set fileencoding=utf-8
set statusline=%F\ %r\ %m%=%3p%%\ \ \ \ \ %y
augroup GetLastPosition " Return to where you last edited
  au!
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END
" if exists('+termguicolors')
"   set termguicolors
" endif

exec 'nohlsearch'
let mapleader=' '


" ===
" ++++ plug-in list
" ===
call plug#begin()

Plug 'cocopon/iceberg.vim'

Plug 'voldikss/vim-translator'
Plug 'mbbill/undotree'
" Plug 'jiaoshijie/undotree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

let g:nvim_config_path = stdpath('config')
let g:config_file_list = [
      \ "auto",
      \ "function",
      \ "translator",
      \ "undotree",
      \ "coc",
      \ "ultisnips",
      \ "autopairs",
      \ "markdown-preview",
      \ ]
for f in g:config_file_list
  execute 'source ' . g:nvim_config_path . '/source/' . f . '.vim'
endfor


" ===
" ++++ mappings
" ===
map H 5h
map J 5j
map K 5k
map L 5l
nnoremap sl :set splitright<cr>:vsplit<cr>
nnoremap sh :set nosplitright<cr>:vsplit<cr>
nnoremap sj :set splitbelow<cr>:split<cr>
nnoremap sk :set nosplitbelow<cr>:split<cr>
nnoremap <up> :res -2<cr>
nnoremap <down> :res +2<cr>
nnoremap <right> :vertical res +2<cr>
nnoremap <left> :vertical res -2<cr>
nnoremap - $
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <a-j> o
nmap ∆ <a-j>
nnoremap <a-k> O
nmap ˚ <a-k>

inoremap <a-j> <esc>o
imap ∆ <a-j>
inoremap <a-k> <esc>O
imap ˚ <a-k>

vnoremap - $h


" ===
" ++++ mapleader mappings
" ===
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bN :bNext<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>= : source $MYVIMRC<cr>
nnoremap <leader>sh :nohlsearch<cr>
nnoremap <c-h> :bNext<cr>
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l


" ===
" ++++ toggle mappings
" ===

" coc trigger
noremap <leader>' :CocDisable<cr>
noremap <leader>; :CocEnable<cr>


" ===
" ++++ color, style
" ===
" set guicursor=a:block

