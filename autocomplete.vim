" neocomplete like
set completeopt+=noinsert
" " deoplete.nvim recommend
set completeopt+=noselect
set clipboard=unnamed

" deoplete-go settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = '/tmp'
let g:deoplete#sources#jedi#enable_cache = 1
