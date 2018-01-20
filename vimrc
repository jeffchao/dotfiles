set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/syntastic'

call plug#end()

syntax on
filetype plugin indent on

colorscheme jeff

set backspace=indent,eol,start
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set nobackup
set noswapfile
set number
set t_Co=16
set et
set hlsearch

set shellpipe=> "ack vim bug
set completeopt-=preview "omnicomplete top window

let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'gometalinter', 'govet']
let g:syntastic_go_gometalinter_post_args = "--disable-all --enable=deadcode --enable=errcheck --enable=interfacer --enable=unconvert --enable=goconst --enable=gosimple --enable=staticcheck --deadline=10s --exclude=vendor"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:go_fmt_command = "goimports"

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]vendor$',
  \ }

:nnoremap <silent><esc> :noh<CR>
:nnoremap <esc>^[ <esc>^[

map T <plug>NERDTreeTabsToggle<CR>
map F <plug>NERDTreeTabsFind<CR>

retab
