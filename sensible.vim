" sensible.vim - Defaults everyone can agree on
" Maintainer:   Tim Pope <http://tpo.pe/>
" Version:      1.1

if exists('g:loaded_sensible') || &compatible
  finish
else
  let g:loaded_sensible = 1
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.
set confirm
set hidden
set noswapfile
set nobackup
set relativenumber
set number
set langnoremap
set langmenu=en_US.UTF-8
language en_US

set wrap
set nowrapscan
set nolinebreak
set wrapmargin=0
set formatoptions+=l
set noshowmode

set textwidth=80

set ignorecase
set smartcase

set backspace=indent,eol,start


set nrformats-=octal

set ttimeout
set ttimeoutlen=100

" search
set incsearch
set nolazyredraw
set showmatch
set mat=2

" Use <C-L> to clear the highlighting of :set hlsearch.
"set hlsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set ruler
set showcmd
set laststatus=2


set wildmenu
"set wildmode=list:longest,full

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set autoread
set fileformats+=mac

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=256
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

inoremap <C-U> <C-G>u<C-U>
set pastetoggle=<Leader>p

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set smartindent
set expandtab

"vim:set ft=vim et sw=2:
