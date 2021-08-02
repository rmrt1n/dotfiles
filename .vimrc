""""""""""""""""""""""""""""""""""""""""""""
" => vimrc
""""""""""""""""""""""""""""""""""""""""""""
"sections:
"   * plugins
"   * user interface options
"   * search options 
"   * indentation options 
"   * custom keybindings
"   * filetype specific settings
"   * misc


""""""""""""""""""""""""""""""""""""""""""""
" => plugins
""""""""""""""""""""""""""""""""""""""""""""
" plugins will be downloaded under the specified directory
call plug#begin('~/.vim/plugged')

" nerdcommenter
Plug 'scrooloose/nerdcommenter'
" alternate comment for c
let g:NERDAltDelims_c = 1
" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" papercolor colorscheme
Plug 'nlknguyen/papercolor-theme'

" github colorscheme
Plug 'cormacrelf/vim-colors-github'

" multiple language syntax support
Plug 'sheerun/vim-polyglot'

" auto pair
Plug 'jiangmiao/auto-pairs'

" rainbow parentheses
Plug 'luochen1990/rainbow'
let g:rainbow_conf = {
\   'ctermfgs': [
\       'darkred', '166', 'darkyellow', 'darkgreen',
\       '33', '20', '5', '200'
\   ]
\ }

" ocp-indent
" Plug 'def-lkb/ocp-indent-vim'

" list ends here. plugins become visible to vim after this call
call plug#end()

" netrw file explorer settings
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=15


""""""""""""""""""""""""""""""""""""""""""""
" => user interface options
""""""""""""""""""""""""""""""""""""""""""""
" set light background
set background=light

set t_Co=256
" colorscheme
" colorscheme PaperColor
colorscheme github

" set syntax highlighting
syntax on     

" show line numbers
set number

" show a visual line under cursor's current line
set cursorline
" highlight entire line instead of underline
" highlight CursorLine cterm=none ctermbg=254

" remove statusbar
set laststatus=0

" set mouse support a=all
set mouse=a

" turn on wildmenu (command autocompletion)
set wildmenu

" natural split, new files to the right/down
set splitbelow
set splitright

" use encoding that supports unicode
set encoding=utf-8

" set number of screen lines to keep above/below cursor 
set scrolloff=7

" enable line wrapping
set wrap

" avoide wrapping a line in the middle of a word
set linebreak

" ruler at 80
set colorcolumn=80

" code fold option
set foldmethod=syntax
" fold 1 level only
set foldnestmax=1


""""""""""""""""""""""""""""""""""""""""""""
" => search options
""""""""""""""""""""""""""""""""""""""""""""
" ignore case when searching
set ignorecase

" smart case when searching
set smartcase

" live incremental searching
set incsearch

" highlight all search results
set hlsearch

" show matching brackets when cursor is above them
set showmatch
" how many tenths of a second to blink when matching brackets
set mat=0


""""""""""""""""""""""""""""""""""""""""""""
" => indentation options
""""""""""""""""""""""""""""""""""""""""""""
" enable indentation rules that are file-type specific
filetype on
filetype indent on    
filetype plugin on

" convert tabs into spaces
set expandtab
" insert 'tab stop' number of spaces when pressing tab
set smarttab

" indent using 2 spaces 
set tabstop=2
" when shifting, indent using 2 spaces
set shiftwidth=2

" new line inherits indentation of the previous line 
set autoindent          
" smart indent
set smartindent


""""""""""""""""""""""""""""""""""""""""""""
" => custom keybindings
""""""""""""""""""""""""""""""""""""""""""""
" set leader key to space bar
let mapleader = " " 

" faster saving and quitting 
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>wq :wq<cr>

" faster set nohighlight
nmap <leader>n :noh<cr>

" v-split new buffer
nmap <leader><Enter> :vnew<cr>

" v-split terminal
nmap <leader>t :vert term<cr>

" easier switching between tiles
nmap <leader>j <C-W><C-J>
nmap <leader>k <C-W><C-K>
nmap <leader>l <C-W><C-L>
nmap <leader>h <C-W><C-H>

" faster buffer switching
nmap <leader>g :bn<cr>
nmap <leader>G :bp<cr>

" add blank line under cursor
nmap <leader>o o<Esc>

" faster than reaching for esc key
imap jk <Esc>

" faster moving in wrapped lines
map j gj
map k gk

" quick macro toggle
nmap <leader>2 @q

" quick fold toggle
nmap <leader>f za
" quick toggle all folds
nmap <leader>F zi

" toggle rainbow paren
nmap <leader>p :RainbowToggle<cr>

" highlight current line
" nmap <leader>m mm:execute 'match Search /\%'.line('.').'l/'<CR>
nmap <Leader>m :call matchadd('Search', '\%'.line('.').'l')<CR>

""""""""""""""""""""""""""""""""""""""""""""
" => filetype specific settings
""""""""""""""""""""""""""""""""""""""""""""
" languages with 4 spaces indentation
autocmd Filetype python setlocal tabstop=4 shiftwidth=4
autocmd Filetype c setlocal tabstop=4 shiftwidth=4
autocmd Filetype cpp setlocal tabstop=4 shiftwidth=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4

" r, rmarkdown
autocmd Filetype r imap -- <-
autocmd Filetype r imap PP %>%

autocmd Filetype rmd imap -- <-
autocmd Filetype rmd nmap <leader>i o```{r<Esc>o<cr>```<Esc>k
autocmd Filetype rmd imap PP %>%

" html, css, json
autocmd Filetype html imap < <><Esc>i

" scheme
autocmd BufNewFile,BufRead *.sld :set filetype=scheme
autocmd Filetype scheme setlocal lisp
autocmd Filetype scheme let b:AutoPairs = AutoPairsDefine({}, ["'", "`"])
autocmd Filetype scheme :RainbowToggle
autocmd Filetype scheme :highlight PARENS cterm=bold
autocmd Filetype scheme :match PARENS \[()]\

" templates
autocmd BufNewFile *.c 0r ~/Templates/c.c
autocmd BufNewFile *.html 0r ~/Templates/html.html
autocmd BufNewFile *.ejs 0r ~/Templates/html.html
autocmd BufNewFile Makefile 0r ~/Templates/Makefile

" ocaml
" let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
" execute "set rtp+=" . g:opamshare . "/merlin/vim"
" set rtp+=</home/rmrt1n/.opam/default/bin/ocp-indent>

" asm (not working by default because of polyglot)
autocmd BufNewFile,BufRead *.s set filetype=asm

""""""""""""""""""""""""""""""""""""""""""""
" => misc
""""""""""""""""""""""""""""""""""""""""""""
" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" set how many lines of history to remember
set history=500

" show confirmation dialogue when closing unsaved file
set confirm

" common typos
cmap W w
cmap Q q
cmap Wq wq
cmap WQ wq

" change terminal title
set title

" set to auto read when a file is changed externally 
set autoread

" allow buffers with unsaved changes
set hidden

