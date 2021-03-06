let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

let g:NERDChristmasTree = 1
let g:NERDTreeSplitVertical=1

set conceallevel=0
set mouse=a
set guioptions+=a

if has('clipboard')
    set clipboard=unnamed,autoselect
endif

"airline lineの設定
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
set t_Co=256

set backspace=indent,eol,start
noremap ; :

au BufRead,BufNewFile *.{md,mkd} set ft=markdown
au BufRead,BufNewFile *.schema set filetype=ruby


" change comment color scheme
autocmd ColorScheme * highlight Comment ctermfg=243 guifg=#757675

set colorcolumn=120

"set visualbell
"set noerrorbells
set visualbell t_vb= 
