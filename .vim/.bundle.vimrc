filetype off
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

" {{{
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

if has("lua")
  NeoBundleLazy 'Shougo/neocomplete', { 'autoload' : {
        \   'insert' : 1,
        \ }}
else
  NeoBundleLazy 'Shougo/neocomplete', {
        \ 'autoload' : {
        \   'insert' : 1,
        \ },
        \ }
endif

NeoBundleLazy 'Shougo/neosnippet', {
      \ 'autoload' : {
      \   'commands' : ['NeoSnippetEdit', 'NeoSnippetSource'],
      \   'filetypes' : 'snippet',
      \   'insert' : 1,
      \   'unite_sources' : ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
      \ }}

NeoBundle 'tpope/vim-rails', { 'autoload' : {
      \ 'filetypes' : ['haml', 'ruby', 'eruby'] }}

NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
      \ 'autoload' : {
      \   'insert' : 1,
      \ }}

NeoBundleLazy 'edsono/vim-matchit', { 'autoload' : {
      \ 'filetypes': 'ruby',
      \ 'mappings' : ['nx', '%'] }}

NeoBundleLazy 'basyura/unite-rails', {
      \ 'depends' : 'Shougo/unite.vim',
      \ 'autoload' : {
      \   'unite_sources' : [
      \     'rails/bundle', 'rails/bundled_gem', 'rails/config',
      \     'rails/controller', 'rails/db', 'rails/destroy', 'rails/features',
      \     'rails/gem', 'rails/gemfile', 'rails/generate', 'rails/git', 'rails/helper',
      \     'rails/heroku', 'rails/initializer', 'rails/javascript', 'rails/lib', 'rails/log',
      \     'rails/mailer', 'rails/model', 'rails/rake', 'rails/route', 'rails/schema', 'rails/spec',
      \     'rails/stylesheet', 'rails/view'
      \   ]
      \ }}

NeoBundleLazy 'alpaca-tc/unite-rails_best_practices', {
      \ 'depends' : 'Shougo/unite.vim',
      \ 'build' : {
      \    'mac': 'gem install rails_best_practices',
      \    'unix': 'gem install rails_best_practices',
      \ },
      \ 'autoload': {
      \   'unite_sources': 'rails_best_practices'
      \ }}

NeoBundleLazy 'alpaca-tc/neorspec.vim', {
      \ 'depends' : ['alpaca-tc/vim-rails', 'tpope/vim-dispatch'],
      \ 'autoload' : {
      \   'commands' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
      \ }}

"NeoBundleLazy 'alpaca-tc/alpaca_tags', {
"      \ 'depends': 'Shougo/vimproc',
"      \ 'autoload' : {
"      \   'commands': ['AlpacaTagsUpdate', 'AlpacaTagsSet', 'AlpacaTagsBundle']
"      \ }}

" }}}



NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'

NeoBundle 'taichouchou2/alpaca_powertabline'
NeoBundle 'bling/vim-airline'
NeoBundle 'The-NERD-tree'
NeoBundle 'Shougo/vimshell'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'hrp/EnhancedCommentify'

"正規表現をperl風にかける
NeoBundle 'eregex.vim'
NeoBundle 'thinca/vim-ref'
NeoBundle 'taglist.vim'
" %移動を賢くする
"NeoBundle 'matchit.zip'
NeoBundle 'ZenCoding.vim'
"for python
NeoBundle 'davidhalter/jedi-vim'
"NeoBundle 'kevinw/pyflakes-vim'
"NeoBundle 'vim-scripts/pythoncomplete.git'
NeoBundle 'nathanaelkane/vim-indent-guides'
"for haskell
NeoBundle 'dag/vim2hs'
NeoBundle 'ujihisa/neco-ghc'
"for JS
NeoBundle 'jQuery'
NeoBundleLazy 'JavaScript-syntax',{
            \ 'autoload' :{
            \'filetypes' : 'javascript'
            \}
            \}
" ctags
NeoBundle 'vim-scripts/Source-Explorer-srcexpl.vim'
NeoBundle 'trinity.vim'
NeoBundle 'taglist.vim'

NeoBundle 'tpope/vim-surround'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'terryma/vim-multiple-cursors'

NeoBundle 'tpope/vim-dispatch'
"NeoBundle 'osyo-manga/vim-precious'
NeoBundle 'Shougo/context_filetype.vim'
NeoBundle 'kana/vim-textobj-user'

NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tpope/vim-fugitive'
NeoBundle  'rking/ag.vim'

NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'evidens/vim-jinja2'

NeoBundle 'joker1007/vim-markdown-quote-syntax'
NeoBundle 'junegunn/vim-easy-align'

"NeoBundleCheck
