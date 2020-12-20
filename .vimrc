" VIM Configuration - Based off configuration from Vincent Jousse
" Cancel the compatibility with Vi. Essential if you want
" to enjoy the features of Vim
set nocompatible
set autoread

" Activate pathogen
call pathogen#infect()

" Display
set title                 " Update the title of your window or your terminal
set number                " Display line numbers
set ruler                 " Display cursor position
set wrap                  " Wrap lines when they are too long

set scrolloff=3           " Display at least 3 lines around you cursor
                          " (for scrolling)

set guioptions=T          " Enable the toolbar

" -- Search
set ignorecase            " Ignore case when searching
set smartcase             " If there is an uppercase in your search term
                          " search case sensitive again
set incsearch             " Highlight search results when typing
set hlsearch              " Highlight search results

" -- Beep
set visualbell            " Prevent Vim from beeping
set noerrorbells          " Prevent Vim from beeping

" Backspace behaves as expected
set backspace=indent,eol,start

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" Enable syntax highlighting
syntax enable
set background=light

colorscheme github
let g:airline_theme = "github"
let g:airline#extensions#ale#enabled = 1

" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" Change the font
set guifont=Fira\ Code:h16
set antialias

" Tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Activate the NERDTree when launching vim
" autocmd vimenter * NERDTree

" Press the i 2 times in row
:imap ii <Esc>

" Visual Bell
set t_vb=

" Fuzzy Search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Ingore options
set wildignore=node_modules/*,.git*,deps/*,*/tmp/*,*.so,*.swp,*.zip

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

let g:ale_linters = {}
let g:ale_linters.elixir = ['elixir-ls', 'credo']

" let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = ['mix_format']

let g:ale_sign_column_always = 1
let g:ale_elixir_credo_strict = 1

let g:ale_elixir_elixir_ls_release = expand("~/elixir-ls/rel")
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set splitbelow
set splitright
