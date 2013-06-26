filetype off
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim.git'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'

NeoBundle 'taichouchou2/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}

NeoBundle 'The-NERD-tree'
NeoBundle 'Shougo/vimshell'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'hrp/EnhancedCommentify'

"正規表現をperl風にかける
NeoBundle 'eregex.vim'
NeoBundle 'thinca/vim-ref'
NeoBundle 'taglist.vim'
" %移動を賢くする
NeoBundle 'matchit.zip'
NeoBundle 'ZenCoding.vim'
"for python
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'vim-scripts/pythoncomplete.git'
NeoBundle 'nathanaelkane/vim-indent-guides'
"for haskell
NeoBundle 'dag/vim2hs'
NeoBundle 'ujihisa/neco-ghc'
"for JS
NeoBundle 'jQuery'
NeoBundle 'JavaScript-syntax'
"for Titanium
"NeoBundle 'pekepeke/titanium-vim'
" ctags
NeoBundle 'vim-scripts/Source-Explorer-srcexpl.vim.git'
NeoBundle 'trinity.vim'
NeoBundle 'taglist.vim'
" for ruby
"NeoBundle 'taichouchou2/vim-rsense'
"NeoBundle 'ruby-matchit'

NeoBundle 'tpope/vim-surround'
" for latex
"NeoBundle 'nuclearsandwich/vim-latex'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'kazy1991/simple-browser.vim'

NeoBundle 'tpope/vim-dispatch'

NeoBundle "osyo-manga/vim-precious"


" 必須プラグイン
NeoBundle "Shougo/context_filetype.vim"

" textobj を使いたい場合必要
NeoBundle "kana/vim-textobj-user"

"shell
"NeoBundle 'http://conque.googlecode.com/svn/trunk/' 
"NeoBundle 'vim-scripts/Conque-Shell', { 'autoload' : { 'commands'  : ['ConqueTerm', 'ConqueTermSplit', 'ConqueTermTab', 'ConqueTermVSplit'] } }
 
NeoBundle 'derekwyatt/vim-scala'

NeoBundle 'majutsushi/tagbar'

NeoBundle 'tpope/vim-fugitive'

NeoBundle  'rking/ag.vim'
