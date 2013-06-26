
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

set mouse=a
set guioptions+=a

if has('clipboard')
    set clipboard=unnamed,autoselect
endif

"let file_name = expand("%")
"if has('vim_starting') &&  file_name == ""
"    autocmd VimEnter *  NERDTree ./
"endif


" ctl+nの設定
let g:ctrlp_use_migemo = 1
let g:ctrlp_clear_cache_on_exit = 0   " 終了時キャッシュをクリアしない
let g:ctrlp_mruf_max            = 500 " MRUの最大記録数

"power lineの設定
let g:Powerline_symbols = 'fancy'
set t_Co=256

noremap ; :
"noremap : ;
:command! W :w

