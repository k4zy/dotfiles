
NeoBundle 'git://github.com/plasticscafe/vim-less-autocompile.git'
autocmd BufRead,BufNewFile *.less set filetype=less
let g:less_autocompile=1
let g:less_compress=0
NeoBundle 'git://github.com/groenewege/vim-less.git'
autocmd BufNewFile,BufRead *.less set filetype=css
