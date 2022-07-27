"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.vim/bundle')
  call dein#begin('$HOME/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.vim/bundle/repos/github.com/Shougo/dein.vim')
"  call dein#add('Shougo/deoplete.nvim')
"  if !has('nvim')
"    call dein#add('roxma/nvim-yarp')
"    call dein#add('roxma/vim-hug-neovim-rpc') " 
"    " init deoplete
"    let g:deoplete#enable_at_startup = 1
"  endif

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/vimshell')
  call dein#add('preservim/nerdtree')
  call dein#add('preservim/tagbar')
  call dein#add('universal-ctags/ctags')
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('fatih/vim-go')
  call dein#add('pearofducks/ansible-vim')
  call dein#add('puppetlabs/puppet-syntax-vim')
  " You can specify revision/branch/tag.
  "" call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" Required:
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable

"" Set the solarized color theme
set background=dark
let g:solarized_termcolors=256

colorscheme vividchalk



" Don't reset on sourcing rc file.
if has('vim_starting')
   set nocompatible               " Be iMproved
endif

"" Turn on line numbers
set number
nmap <C-N><C-N> :set invnumber<CR>

"" Map shortcut to Nerdtree
map <C-L> :NERDTreeToggle<CR>

"" Map shortcut to ctags
map <C-T><C-T> :TagbarToggle<CR>

"" Turn on status line
set laststatus=2
set ruler
syntax on
set bs=2


"" Configure vim-airline
"""" Enable the tabline
let g:airline#extensions#tabline#enabled = 1

"" Fix line number background colors
" highlight LineNr ctermfg=black ctermbg=DarkGray

"" Automatically start Nerdtree when opening a directory or an empty buffer
"""" Start if directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
""" Auto-close if NerdTree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-go
let g:go_fmt_command = "gopls"
let g:go_info_mode = "gopls"
let g:go_autodetect_gopath = 1
let g:go_auto_type_info = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

augroup go
  autocmd!

  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

  " :GoTest
  autocmd FileType go nmap <leader>t  <Plug>(go-test)

  " :GoRun
  autocmd FileType go nmap <leader>r  <Plug>(go-run)

  " :GoDoc
  autocmd FileType go nmap <Leader>d <Plug>(go-doc)

  " :GoCoverageToggle
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

  " :GoInfo
  autocmd FileType go nmap <Leader>i <Plug>(go-info)

  " :GoMetaLinter
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)

  " :GoDef but opens in a vertical split
  autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
  " :GoDef but opens in a horizontal split
  autocmd FileType go nmap <Leader>s <Plug>(go-def-split)

  " :GoAlternate  commands :A, :AV, :AS and :AT
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
