echo      "***************"
echo      "***************"
echo      "**  /\\---/\\  **"
echo      "**  {>^.^<}  **"
echo      "**   \\ v /   **"
echo      "**           **"
echo      "***************"
echo      "***************"
!fortune
echo "\n"
echo "~~~~()~~~~~~~~~~~~~~~~+++++++++++++++++~~~~~~~~~~~~~~~/\~>~~"
echo "~~~(~)~~~~~~~~~~~~~~+~#*#~#~####~#~#~ +~~~~~~~~~~~~~~~|~>~~>"
echo "~~(~~~)~~~~~~~~~~~~+~#*#*#$$%#$~~~#*~~#+~~~~~~~~~~~~~~\/~>~>"  
echo "~~~(~)~~~~~~~~~~~~+~#~#~#~~~$#~$*#~~#~*~+~~~~~~~~~~~~~|\~~>~"
echo "~~~(~~~~~~~~~~~~~~~+~#~#~~~$*#~~$*#~~~~+~~~~~~~~~~~~~~~|/~>~>"
echo "~~(~)~~~~~~~~~~~~~~~+~#~~~$**#~~$*~#~#+~~~~~~~~~~~~~~~|~>~~~"
echo "~~(~~~~~~~~~~~~~~~~~~+~#~$~*~#~*~$~~#+~~~~~~~~~~~~~~~~\~~>~~"
echo "~~~9~~~~~~~~~~~~~~~~~~+~#~$~~#**$~*#+~~~~~~~~~~~~~~~~~~/~~>>"
echo "~~~)~~~~~~~~~~~~~~~~~~~+~#~$~#~$*~#+~~~~~~~~~~~~~~~~~~|\~>>>"
echo "~~~9~~~~~~~~~~~~~~~~~~~~+~#~$#$*~#+~~~~~~~~~~~~~~~~~~~|/\~~>"
echo "~~~)~~~~~~~~~~~~~~~~~~~~~+~#~#~~#+~~~~~~~~~~~~~~~~~~~~|~/~~>"
echo "~~(~~~~~~~~~~~~~~~~~~~~~~~+~~#~#+~~~~~~~~~~~~~~~~~~~~~/~~~~"          
echo "~~~)~~~~~~~~~~~~~~~~~~~~~~~+~#~+~~~~~~~~~~~~~~~~~~~~~~|~~~>"
echo "~~6~~~~~~~~~~~~~~~~~~~~~~~~~+#+~~~~~~~~~~~~~~~~~~~~~~~|\~~>"
echo "~~:~~~~~~~~~~~~~~~~~~~~~~~~~~+~~~~~~~~~~~~~~~~~~~~~~~~|/>>>"


" Ensure Vi Improved is set
set nocompatible

" Enable syntax and plugins
syntax enable
filetype off

" vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'natebosch/vim-lsc'
Plug 'cespare/vim-toml'
Plug 'hashivim/vim-terraform'
" Plug 'Valloric/YouCompleteMe'
call plug#end()

" Map a filetype to the command that starts the language server for that
" filetype
"let g:lsc_server_commands = {'dart': 'dart_language_server'}

" let g:ycm_keep_logfiles = 1
" let g:ycm_log_level = 'debug'

set showcmd

set runtimepath^=runtimepath=~/.vim/,~/.vim,/usr/local/Cellar/macvim/8.1-151/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/8.1-151/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/8.1-151/MacVim.app/Contents/Resources/vim/vimfiles/after


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

" Set highlighting and incomplete highlighting for search
set hlsearch 
set incsearch

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

" Read empty HTML template and move cursor to title
"nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


" Use Bradley's formatter and add it to spec_helper
" http://www.philipbradley.net/rspec-into-vim-with-quickfix/

" postgresql syntax plugin -> pgsql.vim
let g:sql_type_default = 'pgsql'
