if has('autocmd')
  filetype plugin indent on " Identation based on file type
endif

execute pathogen#infect()

syntax on

set nocompatible    " Prefer vim behaviour over vi when both have default values
set encoding=utf-8  " File encoding to utf-8
set cursorline      " Highlight the current line
set hidden          " Hide buffer instead of close when abandoned
set laststatus=2    " Always display file status (name, lines, percentage...)
set nobackup        " No backup file
set noswapfile      " 
set relativenumber  " Show line number relative to current line
set visualbell      " No beep
set noerrorbells    " 
set number          " Display line numbers...
set relativenumber  " ...relative to current line
set numberwidth=3   " Number of columns to show line numbers
set colorcolumn=80  " Display a column with different color in column 80
set scrolloff=3     " Provide 3 lines of context above and below cursor
set title           " Set filename in title
set showcmd         " Display command you are typing
set smartindent     " Self explanatory

" List chars
set list
set listchars=tab:▸\ 
set listchars+=eol:¬
set listchars+=extends:»
set listchars+=precedes:«

" Identation
set tabstop=2                   " The tab width is 2...
set shiftwidth=2                " ...spaces
set expandtab                   " Use spaces, not tabs
set nowrap                      " Dont show line when exceed the window size
set backspace=indent,eol,start  " Delete things the right way in insert mode

" Search
set hlsearch           " Highlight the current search
set incsearch          " Incremental search
set ignorecase         " Case insensitive when searching...
set smartcase          " ...except when using upcase characters
set gdefault           " When replacing, substitute all ocurrences in a line
nnoremap <CR> :noh<CR> " Remove search highlight when pressing Enter key

if has('gui_macvim')
  colorscheme Monokai-chris

  set transparency=10

  " set guifont=Monaco:h12
  set guifont=Inconsolata-dz\ for\ Powerline:h12
  set guioptions-=T "Removes top toolbar
  set guioptions-=r "Removes right hand scrollbar
  set guioptions-=L "Removes left hand scrollbar
end

" Source the vimrc file after saving it
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

let mapleader=',' " Use comma as <Leader> key instead of \

" Buffer remapings
nnoremap <leader>w <C-w>v<C-w>l " Open a vertical window and switch over it
nnoremap <leader>W <C-w>s<C-w>j " Open a horizontal window and switch over it
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Plugins
" Airline configuration
let g:airline_powerline_fonts = 1            " Use powerline fonts
let g:airline#extensions#tabline#enabled = 1 " Display buffers on top

" Invoke CtrlP
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>m :CtrlPMRU<CR>
