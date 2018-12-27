" --------------
" Tabs
" ---------------
map <A-n> :tabnext<CR>
map <A-m> :tabprevious<CR>
nmap <A-f> :tabnew<CR>
nmap <A-w> :tabclose<CR>

" ---------------
" Splits
" ---------------
nmap <C-M> :sp<CR>
nmap <C-N> :vsp<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


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
