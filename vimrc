" syntax
set nu   	           " set line number
syntax on	           " set syntax

" highlighting
set hlsearch         " highlight search
set incsearch        " incermental search

" backup
set nobackup	       " turn off backup	

"Indentation
filetype indent on   " turn on indentation
set autoindent       " turn on auto indentaion
set expandtab        " convert tabs into spaces
set tabstop=2        " width of \t char to '2' when read
set softtabstop=2    " width of keystroke \t or backspace to two spaces when 
set shiftwidth=2     " width of tab in indentation 

" status 
set showcmd          " display incomplete command in right most corner
set ruler            " display the cursor position

" Wrap 
set wrap             " wrap text within the screen

" modes function
let g:setModes={'n': 'NORMAL', 'i': 'INSERT', 'v': 'VISUAL', 'V': 'VISUAL LINE', '': 'VISUAL BLOCK', 'c': 'COMMAND LINE' }

" StatusLine
set laststatus=2          "make statusline permanent
set statusline=%{g:setModes[mode()]}
set statusline+=\ \ 
set statusline+=%<
set statusline+=%f\ 
set statusline+=%h%m%r
set statusline+=%=
set statusline+=%-12.(%l,%c%V%)%y
set statusline+=\ \ 
set statusline+=%P

" Color Scheme
colorscheme gruvbox

" Leader
let mapleader=","

" CUSTOM MAPPING

nnoremap <leader><space> :set relativenumber!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Switching buffer
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>pb :bprev<cr>

" Writing a file
nnoremap <leader>w :w<cr>

" Copying text to system clipboard
vnoremap <C-y> "*y

" auto indent after writting
autocmd BufWritePre *.sh :normal gg=G``zz
autocmd BufWritePre *.js :normal gg=G``zz

" maping escape key
inoremap jk <ESC>

" creating a function
inoremap f<TAB> <ESC>biconst <ESC>$a = function() {<cr>}<ESC>O<ESC>kf(li

" auto_complete date
inoremap d<tab> <esc>:read ! date "+DATE: \%Y-\%m-\%d"<cr>o

" auto-complete "{", ","
inoremap { {}<ESC>i
inoremap , , 
inoremap ; ; 
inoremap : : 

" unmaping keys 
" unmapping arrow keys in normal mode

