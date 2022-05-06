"
"                                _
"          _ __   ___  _____   _(_)_ __ ___
"         | '_ \ / _ \/ _ \ \ / / | '_ ` _ \
"         | | | |  __/ (_) \ V /| | | | | | |
"         |_| |_|\___|\___/ \_/ |_|_| |_| |_|
"
"
" ----------------------------------------------------
"
"    *** The Following is Explanatory Content ***
"
" -------------------- == START == -------------------------
"
"
"
" --------------------- == END == --------------------------

" ===
" === Basic Settings
" ===
syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nu
set relativenumber
set cursorline
" set cursorcolumn
set showcmd
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
" set listchars=tab:\▸\ ,trail:▫
set wrap
set textwidth=200
set scrolloff=6
set history=1000
set nocompatible " neovim is always nocompatible
filetype plugin indent on
set mouse=a " Make vim support mouse
set encoding=utf-8
set laststatus=2 " Having statu line in each window
set autochdir
set clipboard+=unnamedplus
set hlsearch
set incsearch
set ignorecase
set smartcase
set hidden
if exists('+termguicolors')
  set termguicolors
endif

augroup GetLastPosition " Return to where you last edited
  au!
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

exec 'nohlsearch'

let mapleader=' '


" ===
" === Basic Mappings
" ===
nnoremap H 5h
nnoremap J 5j
nnoremap K 5k
nnoremap L 5l
nnoremap sl :set splitright<cr>:vsplit<cr>
nnoremap sh :set nosplitright<cr>:vsplit<cr>
nnoremap sj :set splitbelow<cr>:split<cr>
nnoremap sk :set nosplitbelow<cr>:split<cr>
nnoremap <up> :res -2<cr>
nnoremap <down> :res +2<cr>
nnoremap <right> :vertical res +2<cr>
nnoremap <left> :vertical res -2<cr>
nnoremap - $
nnoremap <a-j> o
nmap ∆ <a-j>
nnoremap <a-k> O
nmap ˚ <a-k>

inoremap <a-j> <esc>o
imap ∆ <a-j>
inoremap <a-k> <esc>O
imap ˚ <a-k>

vnoremap - $h
vnoremap H 3h
vnoremap J 3j
vnoremap K 3k
vnoremap L 3l


" ===
" === mapleader Mappings
" ===
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bN :bNext<cr>
nnoremap <c-j> :bnext<cr>
nnoremap <c-k> :bNext<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>= : source $MYVIMRC<cr>
nnoremap <leader>sh :nohlsearch<cr>

" ===
" === Extra Settings
" ===
augroup RestoreCursorShapeOnExit " Make vim compatible with terminal emulator pointer style: Beam
  autocmd!
  autocmd VimLeave * set guicursor=a:ver20
augroup END


" ===
" === vim-plug
" ===
call plug#begin()

" colorscheme
Plug 'connorholyday/vim-snazzy'
Plug 'morhetz/gruvbox'
Plug 'ajmwagar/vim-deus'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'

" Code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'yggdroot/indentline'
Plug 'rrethy/vim-illuminate'
Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/vista.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'dkarter/bullets.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'romgrk/nvim-treesitter-context'

" Extra
Plug 'voldikss/vim-translator'
Plug 'mbbill/undotree'
Plug 'junegunn/vim-peekaboo'
" Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons' Icons without colours
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-lualine/lualine.nvim'

call plug#end()


" ===
" === import external profiles
" ===

augroup SetFileType
  au!
  au BufRead,BufNewFile *pcfg set filetype=vim
augroup END

" source-list
let g:nvim_config_path = stdpath('config')
let g:config_file_list = [
      \ 'colorschemes',
      \ 'functions',
      \ 'ultisnips',
      \ 'indentline',
      \ 'vim-translator',
      \ 'undotree',
      \ 'vim-illuminate',
      \ 'vim-hexokinase',
      \ 'auto-pairs',
      \ 'coc',
      \ 'vim-peekaboo',
      \ 'nvim-web-devicons',
      \ 'vista',
      \ 'markdown-preview',
      \ 'bullets',
      \ 'nvim-treesitter',
      \ 'bufferline',
      \ 'lualine',
      \ 'practice',
      \ ]
for f in g:config_file_list
  execute 'source ' . g:nvim_config_path . '/pcfg_files/' . f . '.pcfg'
endfor

" NonText Color
" hi NonText ctermfg=0 guifg=#000000
hi NonText ctermfg=0 guifg=#000000

" END