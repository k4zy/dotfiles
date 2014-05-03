"pathの設定
"source ~/dotfiles/.vim/.path.vimrc
"bundle系の設定
source ~/dotfiles/.vim/.bundle.vimrc
" set .. 系の設定
source ~/dotfiles/.vim/.set.vimrc
" vimfilerの設定
"source ~/dotfiles/.vim/.vimfiler.vimrc
"ネオコン(補完)の設定
source ~/dotfiles/.vim/.neocomp.vimrc
" 言語ごとの設定
source ~/dotfiles/.vim/.python.vimrc
source ~/dotfiles/.vim/.ruby.vimrc
" source ~/dotfiles/.vim/.less.vimrc
"source ~/dotfiles/.vim/.coffee.vimrc
"source ~/dotfiles/.vim/.latex.vimrc
 
" テンプレートの設定
"source ~/dotfiles/.vim/.template.vimrc
" vimシェルの設定
source ~/dotfiles/.vim/.shell.vimrc
" nerdTreeの設定
source ~/dotfiles/.vim/.nerd.vimrc
" その他一般的な設定
source ~/dotfiles/.vim/.others.vimrc
" インデントラインの設定 
source ~/dotfiles/.vim/.indent_guide.vimrc
"tagの設定
"source ~/dotfiles/.vim/.tags.vimrc
"railsの設定
source ~/dotfiles/.vim/.rails.vimrc
"プラグインの開発版の設定
"source ~/dotfiles/.vim/.develop.vimrc
"source ~/dotfiles/.vim/.py_dev.vimrc

"エイリアスの設定
source ~/dotfiles/.vim/.alias.vimrc

"lightlineの設定
source ~/dotfiles/.vim/.lightline.vimrc

" get_cursol_group
source ~/dotfiles/.vim/.colorscheme.vimrc

if $GOROOT != ''
  set rtp+=$GOROOT/misc/vim
endif

autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#008800

au BufRead,BufNewFile *.{md,mkd} set ft=markdown

" インサートモード時にバックスペースを使う
set backspace=indent,eol,start

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
" Hilight lower & upper marks
"let showmarks_hlline_lower = 1
"let showmarks_hlline_upper = 1

let g:molokai_original = 1

" change comment color scheme
autocmd ColorScheme * highlight Comment ctermfg=243 guifg=#757675

set visualbell
set noerrorbells


set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent

syntax on
filetype plugin on
filetype indent on
