if has('gui_macvim')
  set showtabline=1    " タブを非表示
  set transparency=12   " 透明度
  set imdisable        " IME OFF
  set guioptions-=T    " ツールバー非表示
  set antialias        " アンチエイリアス
  set tabstop=4        " タブサイズ
  set number           " 行番号表示
  set nobackup         " バックアップなし
  set visualbell t_vb= " ビープ音なし
  colorscheme Tomorrow-Night " カラースキーマ
  set columns=1000      " 横幅
  set lines=70         " 行数

  set nowrapscan       " 検索をファイルの先頭へループしない

  " フォント設定
  set guifontwide=Ricty_for_Powerline:h12
  set guifont=Ricty_for_Powerline:h14
  
  set cursorline
  highlight CursorLine cterm = underline ctermfg = NONE ctermbg = NONE
  highlight CursorLine gui = underline guifg = NONE guibg=NONE
  
endif
