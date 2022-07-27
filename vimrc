set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'ap/vim-css-color'
Plug 'lepture/vim-css'

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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

let g:go_echo_command_info=0
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_fmt_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'goconst', 'deadcode', 'gosimple', 'staticcheck', 'errcheck', 'interfacer']
let g:go_metalinter_autosave = 1

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](vendor|node_modules)$',
  \ }

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

:nnoremap <silent><esc> :noh<CR>
:nnoremap <esc>^[ <esc>^[

map T <plug>NERDTreeTabsToggle<CR>
map F <plug>NERDTreeTabsFind<CR>

retab
