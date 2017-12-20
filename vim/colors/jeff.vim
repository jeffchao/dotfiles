" Vim color file
" Maintainer:   Jeff Chao <jeffchao@me.com>
" Last Change:  2010 September 13
" /usr/share/vim/vim73/colors/jeff.vim

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "jeff"

highlight Comment       ctermfg=4       guifg=#808080
highlight Constant      ctermfg=14      cterm=none      guifg=#00ffff   gui=none
highlight Identifier    ctermfg=6       guifg=#00c0c0
highlight Statement     ctermfg=7       cterm=none      guifg=#c0c000   gui=none
highlight PreProc       ctermfg=10      guifg=#00ff00
highlight Type          ctermfg=10       guifg=#00c000
highlight Special       ctermfg=12      guifg=#0000ff
highlight Error         ctermbg=9       guibg=#ff0000
highlight Todo          ctermfg=4       ctermbg=3       guifg=#000080   guibg=#c0c000
highlight Directory     ctermfg=2       guifg=#00c000
highlight StatusLine    ctermfg=11      ctermbg=12      cterm=none      guifg=#ffff00   guibg=#0000ff   gui=none
highlight Normal        guifg=#ffffff   guibg=#000000
highlight Search        ctermbg=3       guibg=#c0c000
highlight LineNr        term=bold       cterm=none      ctermfg=6        ctermbg=black    gui=NONE
highlight TabLineFill   term=reverse      cterm=reverse ctermfg=DarkGrey ctermbg=black       guibg=#222222 guifg=#226622
