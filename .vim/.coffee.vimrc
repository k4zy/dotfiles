NeoBundle 'git://github.com/kchmck/vim-coffee-script.git'
autocmd FileType coffee setlocal dictionary=$HOME/dotfiles/vimfiles/javascript.dict,$HOME/dotfiles/vimfiles/jQuery.dict
autocmd FileType javascript,coffee setlocal omnifunc=javascriptcomplete
autocmd FileType coffee set tabstop=4 shiftwidth=4
"autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!
