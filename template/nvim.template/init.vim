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


" plug-in list
call plug#begin()

Plug 'cocopon/iceberg.vim'

Plug 'voldikss/vim-translator'
Plug 'mbbill/undotree'
" Plug 'jiaoshijie/undotree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'

call plug#end()

let g:nvim_config_path = stdpath('config')
let g:config_file_list = [
      \ "function",
      \ "translator",
      \ "undotree",
      \ "coc",
      \ "ultisnips",
      \ "autopairs",
      \ ]
for f in g:config_file_list
  execute 'source ' . g:nvim_config_path . '/source/' . f . '.vim'
endfor


" basic Mappings
map H 3h
map J 3j
map K 3k
map L 3l
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

vnoremap - $

" mapleader Mappings
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bN :bNext<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>= : source $MYVIMRC<cr>
nnoremap <leader>sh :nohlsearch<cr>

" color, style settings
set guicursor=a:block

