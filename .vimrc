set nocompatible      
filetype off         

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
     
Plugin 'gmarik/Vundle.vim' 
Plugin 'scwood/vim-hybrid'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'
Plugin 'lumiliet/vim-twig'
Plugin 'alpertuna/vim-header'

call vundle#end()           
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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set mouse=a
map <C-n> :NERDTreeToggle<CR>

let g:header_field_author = 'Damien Benloukil'
let g:header_field_author_email = 'damien@leciseau.fr'
map <C-h> :AddHeader<CR>
