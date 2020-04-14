"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"sections:
"   * user interface options
"   * search options 
"   * indentation options 
"   * custom keybindings
"   * misc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => user interface options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set light background
set background=light

" set colorscheme
" colorscheme PaperColor

" set syntax highlighting
syntax on     

" show line numbers
set number

" show a visual line under cursor's current line
set cursorline
" highlight entire line instead of underline
highlight CursorLine cterm=none ctermbg=254

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => search options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indentation options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable indentation rules that are file-type specific
filetype indent on    

" convert tabs into spaces
set expandtab
" insert 'tab stop' number of spaces when pressing tab
set smarttab

" indent using 4 spaces 
set tabstop=4
" when shifting, indent using 4 spaces
set shiftwidth=4

" new line inherits indentation of the previous line 
set autoindent          
" smart indent
set smartindent


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => custom keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" easier switching between tiles
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" add blank line under cursor
nmap <leader>o o<Esc>

" faster than reaching for esc key
inoremap jk <Esc>

" faster moving in wrapped lines
map j gj
map k gk


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" netrw file explorer settings
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_winsize=15
let g:netrw_browse_split=3
 
