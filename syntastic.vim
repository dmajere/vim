set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_aggregate_errors = 1

nmap <silent> <leader>ck :SyntasticCheck<CR>

let g:syntastic_error_symbol = '✖'
let g:syntastic_warning_symbol = '⚠'
let syntastic_style_error_symbol = '✹'
let syntastic_style_warning_symbol = '➤'

" python
let python_highlight_all = 1
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_python_checkers = ['flake8', 'pylint']
