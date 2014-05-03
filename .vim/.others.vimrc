
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2


set mouse=a
set guioptions+=a

if has('clipboard')
    set clipboard=unnamed,autoselect
endif

" ctl+pの設定
let g:ctrlp_use_migemo = 1
let g:ctrlp_clear_cache_on_exit = 0   " 終了時キャッシュをクリアしない
let g:ctrlp_mruf_max            = 500 " MRUの最大記録数

"power lineの設定
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
set t_Co=256

noremap ; :
"noremap : ;
:command! W :w

