"esc２回でハイライト解除
nmap <ESC><ESC> :nohlsearch<CR><ESC>
" ページ送り
"nmap <C-j> <C-f> 
"nmap <C-k> <C-b> 
imap <C-a> <Home>
imap <C-e> <End>
map <C-a> <Home>
map <C-e> <End>

map  m vit

let mapleader = "'"

"Unite用の設定
nnoremap <leader>o :<C-u>Unite file_rec/async<CR>
nnoremap <leader>g :<C-u>Unite grep:.<CR>

"alias Rspec
"let g:neorspec_command = "Dispatch rspec -fd  {spec}"
nnoremap <leader>ra :<C-U>RSpecNearest<CR>
nnoremap <leader>rn :<C-U>RSpecAll<CR>

nnoremap <leader>re :<C-U>source ~/.vimrc<CR>

"alias OverCommandLine
nnoremap <leader>c :<C-U>OverCommandLine<CR>

"alias fugitive
nnoremap <leader>gs :<C-U>Gstatus<CR>
nnoremap <leader>gd :<C-U>Gdiff<CR>

let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 200
nnoremap \b :<C-u>Unite  buffer<CR>

"taglist
nmap <Leader>a :TagbarToggle<CR>

"sudo 権限で保存
cmap w!! w !sudo tee > /dev/null %


"VimShellを起動する
nnoremap \sh :<C-u>VimShell<CR>
"quickrun 
nmap <Leader>r <plug>(quickrun)

nmap <Tab>      gt
nmap <S-Tab>    gT

nnoremap <silent> <Leader>t :<C-u>NERDTree<CR>

" gfの画面分割版 gsで縦割り gaで横割り
nnoremap gs :vertical wincmd f<CR>
nnoremap ga <C-w>f


"Snippet用のキーバインド
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
""
"" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
 set conceallevel=2 concealcursor=i
endif
