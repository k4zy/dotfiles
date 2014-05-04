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

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'The-NERD-tree'
NeoBundle 'ShowMarks'
NeoBundle  'rails.vim'
NeoBundle 'taglist.vim'
NeoBundle 'copypath.vim'

NeoBundle 'taichouchou2/neorspec.vim'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'basyura/unite-rails'

NeoBundle 'hrp/EnhancedCommentify'
NeoBundle 'tpope/vim-surround'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'tpope/vim-dispatch'

NeoBundle 'Yggdroot/indentLine'
NeoBundle 'bling/vim-airline'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'joker1007/vim-markdown-quote-syntax'
NeoBundle 'tpope/vim-endwise'
