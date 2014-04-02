filetype off
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

function! s:meet_neocomplete_requirements()
    return has('lua') && (v:version > 703 || (v:version == 703 && has('patch885')))
endfunction

if s:meet_neocomplete_requirements()
    NeoBundleLazy 'Shougo/neocomplete', { 
        \ 'autoload' : {
        \   'insert' : 1,
        \ }}
else
    NeoBundleFetch 'Shougo/neocomplete.vim'
    NeoBundle 'Shougo/neocomplcache.vim'
endif

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'The-NERD-tree'
NeoBundle 'Shougo/vimshell'
NeoBundle 'hrp/EnhancedCommentify'

NeoBundle 'vim-scripts/ShowMarks'
NeoBundle 'mattn/emmet-vim'

if has('python')
NeoBundleLazy "jmcantrell/vim-virtualenv", {
      \ "autoload": {
      \   "filetypes": ["python", "python3"]
      \ }}
NeoBundleLazy 'davidhalter/jedi-vim', {
    \ "rev" : "dev",
    \ "autoload": {
    \    "filetypes": [ "python", "python3" ]},
    \}
endif

NeoBundle 'nathanaelkane/vim-indent-guides'

" ctags
NeoBundle 'vim-scripts/Source-Explorer-srcexpl.vim'
NeoBundle 'trinity.vim'
NeoBundle 'taglist.vim'
NeoBundle 'majutsushi/tagbar'

" others
NeoBundle 'tpope/vim-surround'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'terryma/vim-multiple-cursors'

NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle  'rking/ag.vim'

NeoBundle 'joker1007/vim-markdown-quote-syntax'
NeoBundle 'junegunn/vim-easy-align'

NeoBundle 'dart-lang/dart-vim-plugin'

NeoBundle 'osyo-manga/vim-over'

NeoBundle 'tomasr/molokai'
NeoBundle 'jonathanfilip/vim-lucius'
"NeoBndlle 'rhysd/codic-vim-with-unite'

NeoBundle "osyo-manga/neocomplcache-snippets-complete-dart.git"

"NeoBundleCheck
