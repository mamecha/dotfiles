syntax on
"--------- NeoBundle ---------------------
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

""NeoBundle 'shougo/neocomplete'
" Coffee Script
NeoBundle 'kchmck/vim-coffee-script'
" original repos on github
NeoBundle 'tpope/vim-fugitive'
" status line
NeoBundle 'Lokaltog/vim-powerline'
" vim-ruby : VimでRubyを扱う際の最も基本的な拡張機能
NeoBundle 'ruby.vim'
" vim-scripts repos
" "NeoBundle 'rails.vim'
" JavaScript
NeoBundle 'JavaScript-syntax'
" jQuery
NeoBundle 'jQuery'
" nginx conf
NeoBundle 'nginx.vim'
" html5
NeoBundle 'othree/html5.vim'
"
NeoBundle 'ruby-matchit'
NeoBundle 'tpope/vim-endwise'
" ColorSchema{{{{
  " color schema 256
  NeoBundle 'desert256.vim'
  NeoBundle 'mrkn256.vim'
  NeoBundle 'tomasr/molokai'
  NeoBundle 'yuroyoro/yuroyoro256.vim'
"}}}
filetype plugin indent on    
"--------- NeoBundle ---------------------

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

" 閉じた系
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

inoremap ( ()<ESC>i
inoremap <expr> ) ClosePair(')')
inoremap { {}<ESC>i
inoremap <expr> } ClosePair('}')
inoremap [ []<ESC>i
inoremap <expr> ] ClosePair(']')
inoremap <% <% %><ESC>i
inoremap <expr> %> ClosePair('%>')
" pair close checker.
" " from othree vimrc ( http://github.com/othree/rc/blob/master/osx/.vimrc )
function ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endf

" XML/HTML 閉じタグ"
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd FileType eruby inoremap <silent> <buffer> </ </<C-x><C-o>
augroup END
autocmd! FileType eruby,html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

