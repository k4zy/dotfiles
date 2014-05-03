"----------------------------------------------------
" showmarks.vim
"  <Leader>mt ON/OFFトグル。
"  <Leader>mm 次の使えるマークを使ってマーク。
"  <Leader>mh カレント行ののマークを削除。
"  <Leader>ma カレントバッファのマークを全部削除。
"----------------------------------------------------
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
"help、quickfixと編集不可のバッファについて、マークを表示しない。-
let showmarks_ignore_type = "hqm"
