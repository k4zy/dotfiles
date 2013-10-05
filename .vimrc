"pathの設定
source ~/dotfiles/.vim/.path.vimrc
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
"source ~/dotfiles/.vim/.ruby.vimrc
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

"autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#008800

syntax on
filetype plugin on
filetype indent on
