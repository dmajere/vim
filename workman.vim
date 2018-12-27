 " Keyboard  **************************
    function Keyboard(type)
       if a:type == "dvorak"
           call UnmapWorkman()
           nnoremap d h
           nnoremap h j
           nnoremap t k
           nnoremap n l
           nnoremap s :
           nnoremap S :
           nnoremap j d
           onoremap j d
           nnoremap l n
           nnoremap L N

           nnoremap - $
           nnoremap _ ^
           nnoremap N <C-w><C-w>
           nnoremap H 8<Down>
           nnoremap T 8<Up>
           nnoremap D <C-w><C-r>
       elseif a:type == "workman"
           call UnmapDvorak()
           "(O)pen line -> (L)ine
           nnoremap l o
           nnoremap o l
           nnoremap L O
           nnoremap O L
           "Search (N)ext -> (J)ump
           nnoremap j n
           nnoremap n j
           nnoremap J N
           nnoremap N J
           nnoremap gn gj
           nnoremap gj gn
           "(E)nd of word -> brea(K) of word
           nnoremap k e
           nnoremap e k
           nnoremap K E
           nnoremap E <nop>
           nnoremap gk ge
           nnoremap ge gk
           "(Y)ank -> (H)aul
           nnoremap h y
           onoremap h y
           nnoremap y h
           nnoremap H Y
           nnoremap Y H
       else " qwerty
           call UnmapDvorak()
           call UnmapWorkman()
       endif
    endfunction

    function UnmapDvorak()
        "Unmaps Dvorak keys
        silent! nunmap d
        silent! nunmap h
        silent! nunmap t
        silent! nunmap n
        silent! nunmap s
        silent! nunmap S
        silent! nunmap j
        silent! ounmap j
        silent! nunmap l
        silent! nunmap L

        silent! nunmap -
        silent! nunmap _
        silent! nunmap N
        silent! nunmap H
        silent! nunmap T
        silent! nunmap D
    endfunction

    function UnmapWorkman()
        "Unmaps Workman keys
        silent! nunmap h
        silent! ounmap h
        silent! nunmap j
        silent! nunmap k
        silent! nunmap l
        silent! nunmap y
        silent! nunmap n
        silent! nunmap e
        silent! nunmap o
        silent! nunmap H
        silent! nunmap J
        silent! nunmap K
        silent! nunmap L
        silent! nunmap Y
        silent! nunmap N
        silent! nunmap E
        silent! nunmap O
    endfunction

    function LoadKeyboard()
       let keys = $keyboard
       if (keys == "workman")
           call Keyboard("workman")
       else
           call Keyboard("dvorak")
       endif
    endfunction

    autocmd VimEnter * call LoadKeyboard()

    :noremap <Leader>q :call Keyboard("qwerty")<CR>:echom "Qwerty Keyboard Layout"<CR>
    :noremap <Leader>d :call Keyboard("dvorak")<CR>:echom "Dvorak Keyboard Layout"<CR>
    :noremap <Leader>w :call Keyboard("workman")<CR>:echom "Workman Keyboard Layout"<CR>
