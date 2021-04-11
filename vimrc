" Don't try to be vi compatible
set nocompatible


" TODO: Load plugins here (pathogen or vundle)
"Remove all menus
"set guioptions-=M
"set guioptions-=m  "remove menu bar
"set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set linebreak
"set nolist
set formatoptions-=t
set wildmenu
set wildmode=list:longest,full
set path=$PWD/**

au BufNewFile,BufRead *.py
    \ set tabstop=4  |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
let python_highlight_all = 1

" Enable folding

" Enable folding with the spacebar
nnoremap <space> za

map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
" Color scheme (terminal)
"set t_Co=256
"set termguicolors
"let base16colorspace=256
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"colorscheme base16-helios 
colorscheme pencil
"colorscheme gruvbox
"set guifont=Go\ Mono\ 11
set guifont=CascadiaCode\ 10

set statusline=%f         " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=col:\ %c,
set termguicolors

let python_highlight_all=1
map <silent> <C-d> :NERDTreeToggle<CR>
autocmd BufWrite * mkview
autocmd BufRead * silent! loadview
let g:go_fmt_experimental = 0
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_snippet_engine = "ultisnips"
let g:go_fmt_command = "goimports"
let g:go_decls_mode = "fzf"
au FileType go nmap <leader>e <Plug>(go-iferr)

" Turn on syntax highlighting
syntax on

" makes Ascii art font
nmap <leader>F :.!toilet -w 200 -f smbraille<CR>
nmap <leader>f :.!toilet -w 200 -f smmono9<CR>
" makes Ascii border
nmap <leader>1 :.!toilet -w 200 -f term -F border<CR>
command! -bang -nargs=* PRg
      \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'dir': system('git -C '.expand('%:p:h').' rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)
set laststatus=2

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

call plug#begin('~/.vim/plugged')
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'wakatime/vim-wakatime'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sainnhe/everforest'
Plug 'gwww/vim-bbye'
Plug 'godlygeek/tabular'
Plug 'gabrielelana/vim-markdown'
Plug 'franbach/miramare'
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/everforest'
Plug 'sainnhe/edge'

"Plug 'itchyny/lightline.vim'
"Plug 'tpope/vim-surround'
call plug#end()

