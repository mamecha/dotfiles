syntax on

"Vundle plagin かんり"
filetype off                   " (1)

set rtp+=~/.vim/vundle.git/    " (2)
call vundle#rc()               " (3)

" original repos on github
Bundle 'tpope/vim-fugitive'
" status line
Bundle 'Lokaltog/vim-powerline'
" vim-scripts repos
Bundle 'rails.vim'
" vim-ruby : VimでRubyを扱う際の最も基本的な拡張機能
Bundle 'ruby.vim'
" JavaScript
Bundle 'JavaScript-syntax'
" jQuery
Bundle 'jQuery'
" nginx conf
Bundle 'nginx.vim'
" html5
Bundle 'othree/html5.vim'

" smooth_scroll.vim : スクロールを賢く
"Bundle 'Smooth-Scroll'
" vimshell : vimのshell
"Bundle 'Shougo/vimshell.git'
" ステータスラインに顔文字を表示
"Bundle 'mattn/hahhah-vim'
" Unite {{{{
" unite.vim : - すべてを破壊し、すべてを繋げ - vim
"   scriptで実装されたanythingプラグイン
  "Bundle 'Shougo/unite.vim'
  "Bundle 'tsukkee/unite-help'
  "Bundle 'h1mesuke/unite-outline'
  "Bundle 'basyura/unite-rails'
"}}}
" ColorSchema{{{{
  " color schema 256
  Bundle 'desert256.vim'
  Bundle 'mrkn256.vim'
  Bundle 'tomasr/molokai'
  Bundle 'yuroyoro/yuroyoro256.vim'
  Bundle 'cchance-of-storm.vim'
  Bundle 'mgutz/vim-color'
"}}}
filetype plugin indent on     " (5)

set nobk
set showmatch
set cindent
set cin
set tabstop=4
set shiftwidth=2
set sta
set sr
set ai
set si
set so=3
set hls

set fencs=utf-8,euc-jp,sjis,iso-2022-jp,latin1
set ignorecase
set smartcase
set incsearch
set laststatus=2
set expandtab
set ambiwidth=double

let loaded_matchparen = 1

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=%l,%c%V%8P
" ステータスラインの表示
  set statusline=%<     " 行が長すぎるときに切り詰める位置
  set statusline+=[%n]  " バッファ番号
  set statusline+=%m    " %m 修正フラグ
  set statusline+=%r    " %r 読み込み専用フラグ
  set statusline+=%h    " %h ヘルプバッファフラグ
  set statusline+=%w    " %w プレビューウィンドウフラグ
  set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fencとffを表示
  set statusline+=%y    " バッファ内のファイルのタイプ
  set statusline+=\     " 空白スペース
if winwidth(0) >= 130
  set statusline+=%F    " バッファ内のファイルのフルパス
else
  set statusline+=%t    " ファイル名のみ
endif
  set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
  set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
  set statusline+=\ \   " 空白スペース2個
  set statusline+=%1l   " 何行目にカーソルがあるか
  set statusline+=/
  set statusline+=%L    " バッファ内の総行数
  set statusline+=,
  set statusline+=%c    " 何列目にカーソルがあるか
  set statusline+=%V    " 画面上の何列目にカーソルがあるか
  set statusline+=\ \   " 空白スペース2個
  set statusline+=%P    " ファイル内の何％の位置にあるか

" ターミナルタイプによるカラー設定
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86" 
 set t_Co=16
 set t_Sf=^[[3%dm
 set t_Sb=^[[4%dm
elseif &term =~ "xterm-256color" || &term =~ "screen"
 set t_Co=256
 set t_Sf=^[[3%dm
 set t_Sb=^[[4%dm
elseif &term =~ "xterm-color"
 set t_Co=8
 set t_Sf=^[[3%dm
 set t_Sb=^[[4%dm
endif
colorscheme molokai

let g:Powerline_symbols = 'fancy'


