let g:airline_enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_symbols

let g:bufferline_echo = 0
let g:airline_detect_modified=1
let g:airline_detect_paste=1

let g:airline_section_c = airline#section#create(['%F'])

let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#hunks#enabled = 1
