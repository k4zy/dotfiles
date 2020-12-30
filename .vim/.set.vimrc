set number
set expandtab
set softtabstop=2
set shiftwidth=2
set modelines=0
set autoindent
set smartindent
set cindent
set list!
set listchars=tab:>-
set nobackup
set noundofile
set noswapfile
set nocompatible
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [] }
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
vnoremap <silent> > >gv
vnoremap <silent> < <gv
