
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

let g:neocomplcache_snippets_dir = "~/dotfiles/.vim/snippets"
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default'    : '',
            \ 'perl'       : '~/dotfiles/.vim/dict/perl.dict',
            \ 'javascript' : '~/dotfiles/.vim/dict/javascript.dict',
            \ 'c'          : '~/dotfiles/.vim/dict/c.dict',
            \ 'cpp'        : '~/dotfiles/.vim/dict/cpp.dict',
            \ 'java'       : '~/dotfiles/.vim/dict/java.dict',
            \ 'php'        : '~/dotfiles/.vim/dict/php.dict',
            \ 'scala'      : '~/dotfiles/.vim/dict/scala.dict',
            \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" for snippets
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
