
augroup templateload
    autocmd!
    autocmd BufNewFile *.html 0r ~/.vim/template/skeleton.html
    autocmd BufNewFile *.php 0r ~/.vim/template/skeleton.html
    autocmd BufNewFile *.py 0r ~/.vim/template/skeleton.py
augroup END
