autocmd BufWritePre * call StripTrailingWhite()

function! StripTrailingWhite()
    retab!
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction

