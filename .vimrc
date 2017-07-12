" File: /Users/Damien/.vimrc
" Author: Damien Benloukil <damien@leciseau.fr>
" Date: 12.07.2017
" Last Modified Date: 12.07.2017
" Last Modified By: Damien Benloukil <damien@leciseau.fr>

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'scwood/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
Plug 'lumiliet/vim-twig'
Plug 'alpertuna/vim-header'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'ruanyl/vim-fixmyjs'
Plug 'moll/vim-node'
Plug 'mtscout6/syntastic-local-eslint.vim'

call plug#end()

" for eslint compiler
" :SyntasticCheck eslint
    
"filetype off         


filetype plugin indent on

set tabstop=2
set shiftwidth=2
set noexpandtab
set number
set backspace=indent,eol,start
set clipboard=unnamedplus,unnamed,autoselect
set encoding=utf-8
set fileencoding=utf-8

" Theme
"syntax on
"set background=dark
"colorscheme hybrid
syntax enable
colorscheme tender
let macvim_skip_colorscheme=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:SyntasticCheck = 'eslint'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers=['eslint']

set mouse=a
map <C-n> :NERDTreeToggle<CR>

let g:header_field_author = 'Damien Benloukil'
let g:header_field_author_email = 'damien@leciseau.fr'
map <C-h> :AddHeader<CR>
