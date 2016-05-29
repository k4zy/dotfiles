"esc２回でハイライト解除
nmap <ESC><ESC> :nohlsearch<CR><ESC>
" ページ送り
imap <C-a> <Home>
imap <C-e> <End>
map <C-a> <Home>
map <C-e> <End>

map  m vit

let mapleader = "'"

"Unite用の設定
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 200
nnoremap <leader>b :<C-u>Unite  buffer<CR>
nnoremap <leader>o :<C-u>Unite file_rec/async<CR>

"taglist
nmap <Leader>a :TagbarToggle<CR>

"sudo 権限で保存
cmap w!! w !sudo tee > /dev/null %

nnoremap <silent> <Leader>t :<C-u>NERDTree<CR>

" gfの画面分割版 gsで縦割り gaで横割り
nnoremap gs :vertical wincmd f<CR>
nnoremap ga <C-w>f
