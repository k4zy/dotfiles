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

NeoBundle 'Shougo/neocomplete.vim'

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'The-NERD-tree'
NeoBundle 'Shougo/vimshell'
NeoBundle 'hrp/EnhancedCommentify'

NeoBundle 'vim-scripts/ShowMarks'
NeoBundle 'mattn/emmet-vim'

"NeoBundle 'nathanaelkane/vim-indent-guides'

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

NeoBundle 'osyo-manga/vim-over'
NeoBundle 'tomasr/molokai'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle  'rails.vim'
NeoBundle 'tpope/vim-endwise'
let g:endwise_no_mappings=1
NeoBundle 'basyura/unite-rails'
NeoBundle 'thinca/vim-ref'
NeoBundle 'yuku-t/vim-ref-ri'
"----------------------------------------
"" vim-ref
"----------------------------------------
""{{{
let g:ref_open                    = 'split'
let g:ref_refe_cmd                = expand('~/.vim/ref/ruby-ref1.9.2/refe-1_9_2')
 
nnoremap rr :<C-U>Unite ref/refe     -default-action=split -input=
nnoremap ri :<C-U>Unite ref/ri       -default-action=split -input=
 
aug MyAutoCmd
    au FileType ruby,eruby,ruby.rspec nnoremap <silent><buffer>KK :<C-U>Unite -no-start-insert ref/ri   -input=<C-R><C-W><CR>
      au FileType ruby,eruby,ruby.rspec nnoremap <silent><buffer>K  :<C-U>Unite -no-start-insert ref/refe -input=<C-R><C-W><CR>
    aug END
"}}}


NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'
