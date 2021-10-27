" BASE + SYNTHAX
set encoding=utf-8
filetype on
syntax on
set background=dark
set linebreak
" set visualbell
set showmatch
set hlsearch
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set mouse=a
set backspace=indent,eol,start
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

" THEME
packadd! dracula
syntax enable
let g:dracula_italic = 0
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

" EDITOR
set number

" VIM PLUG
call plug#begin('~/.vim/plugged')

" JS / TS / GQL
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax


" AUTOCOMPLETE
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

" BOTTOM BAR
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" linter
Plug 'dense-analysis/ale'
Plug 'vim-syntastic/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'

call plug#end()

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


" BEGIN AUTOCOMPLETE
let g:coc_global_extensions = [ 'coc-tsserver' ]
let g:coc_node_path = '/Users/dbenloukil/.nvm/versions/node/v14.18.1/bin/node'

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)


" END AUTOCOMPLETE
"
" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
