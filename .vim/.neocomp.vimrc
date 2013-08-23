" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default'    : '',
    \ 'vimshell'   : $HOME.'/.vimshell_hist',
    \ 'perl'       : '~/dotfiles/.vim/dict/perl.dict',
    \ 'javascript' : '~/dotfiles/.vim/dict/javascript.dict',
    \ 'c'          : '~/dotfiles/.vim/dict/c.dict',
    \ 'cpp'        : '~/dotfiles/.vim/dict/cpp.dict',
    \ 'java'       : '~/dotfiles/.vim/dict/java.dict',
    \ 'php'        : '~/dotfiles/.vim/dict/php.dict',
    \ 'scala'      : '~/dotfiles/.vim/dict/scala.dict',
    \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=jedi#complete

let g:jedi#auto_vim_configuration = 0

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
