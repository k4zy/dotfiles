let g:counter = 0
let g:flag = 0


autocmd     CursorHold           *   :call Count_function()
autocmd     CursorHold *   :let flag = 1

function! Count_function()
    if 1 == g:flag
        let g:counter += 1
        echo g:counter
    endif
endfunction

