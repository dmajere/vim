"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif
" Required:
set runtimepath^=~/.nvim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.nvim/bundle'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Workman Layout
call dein#add('nicwest/vim-workman', {'rev': '42a6e2'})

"Collor
call dein#add('morhetz/gruvbox')
call dein#add('fatih/molokai')
call dein#add('ryanoasis/vim-devicons')

"Syntax
call dein#add('elzr/vim-json', {'on_ft': ['json']})
call dein#add('IN3D/vim-raml', {'on_ft': ['raml']})
call dein#add('stephpy/vim-yaml', {'on_ft': ['yaml', 'yml']})
call dein#add('tpope/vim-markdown', {'on_ft': ['md']})
call dein#add('mitsuhiko/vim-jinja', {'on_ft': ['j2']})
call dein#add('chase/vim-ansible-yaml')
call dein#add('ekalinin/Dockerfile.vim')
call dein#add('fatih/vim-go')

"Autocomplete
call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-jedi')
call dein#add('zchee/deoplete-go', {'build': 'make'})
call dein#add('SirVer/ultisnips')

"Utils
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('bling/vim-airline')
call dein#add('majutsushi/tagbar')
call dein#add('scrooloose/syntastic')
call dein#add('neomake/neomake', {'if': 0})
call dein#add('jlanzarotta/bufexplorer')
call dein#add('godlygeek/tabular')
call dein#add('tpope/vim-surround')

" Required:
call dein#end()
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------
"
""" Collor scheme
"colorscheme molokai
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox

"" Enable workman layout
call workman#normal_qwerty()

source ~/.config/nvim/sensible.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/tagbar.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/syntastic.vim
source ~/.config/nvim/go.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/gitgutter.vim
source ~/.config/nvim/bufferexplorer.vim
source ~/.config/nvim/autocomplete.vim
source ~/.config/nvim/snippets.vim
