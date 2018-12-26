" vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
 Plug 'Valloric/YouCompleteMe'
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/goyo.vim'
 Plug 'junegunn/limelight.vim'
 Plug 'dart-lang/dart-vim-plugin'
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
 Plug 'natebosch/vim-lsc'
 Plug 'cespare/vim-toml'
 Plug 'hashivim/vim-terraform'
 Plug 'Shougo/neocomplete.vim'
 Plug 'tpope/vim-fireplace'
 Plug 'guns/vim-clojure-static'
 Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
 Plug 'wlangstroth/vim-racket'
call plug#end()

" Ensure Vi Improved is set
set nocompatible

" Show typed commands
set showcmd

" Enable backspace
set bs=2

" Enable syntax and plugins
syntax enable
filetype on

" Tabs to spaces
set tabstop=2 shiftwidth=2 expandtab

" Enable smartindent
set smartindent

" Lines longer than the width of the window will wrap
set wrap

" Numbering options
set number
set relativenumber

" Round indent to multiple of shiftwidth
set shiftround

" Search subfolders
" tab-completion for file-related tasks
set path+=**

" Display matching files when tab completed
set wildmenu

" Modification for browsing

" disable banner
let g:netrw_banner=0        

" open in previous window
let g:netrw_browse_split=4  

" open splits to right
let g:netrw_altv=1          

" tree view
let g:netrw_lifestyle=3     

let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" vim-go
let g:go_gocode_propose_source = 1
let g:go_info_mode='gocode'
let g:go_auto_type_info=1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
setlocal omnifunc=go#complete#Complete
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

