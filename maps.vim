" --------------
" Tabs
" ---------------
"map <A-n> :tabnext<CR>
"map <A-p> :tabprevious<CR>
"nmap <A-t> :tabnew<CR>
"nmap <A-w> :tabclose<CR>

" ---------------
" Splits
" ---------------
nmap <C-L> :sp<CR>
nmap <C-K> :vsp<CR>
nnoremap <C-N> <C-W><C-J>
nnoremap <C-E> <C-W><C-K>
nnoremap <C-O> <C-W><C-L>
nnoremap <C-Y> <C-W><C-H>


set pastetoggle=<F2>
nmap <F3> :GitGutterToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :MBEToggle <CR>
map <F10> <plug>NERDTreeTabsToggle<CR>

" ---------------
" Tabular
" ---------------
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>
nmap <Leader>t> :Tabularize /=>\zs<CR>
vmap <Leader>t> :Tabularize /=>\zs<CR>
