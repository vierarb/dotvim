set nocompatible    " Prefer vim behaviour over vi when both have default values
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'sirtaj/vim-openscad'
Plugin 'ayu-theme/ayu-vim'

call vundle#end()

if has('autocmd')
  filetype plugin indent on " Identation based on file type
endif

syntax on

"set nocompatible    " Prefer vim behaviour over vi when both have default values
set encoding=utf-8  " File encoding to utf-8
set cursorline      " Highlight the current line
set hidden          " Hide buffer instead of close when abandoned
set laststatus=2    " Always display file status (name, lines, percentage...)
" set nobackup        " No backup file
set backupcopy=yes
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
  set transparency=5

  " set guifont=Monaco:h12
  set guifont=Inconsolata\ for\ Powerline:h14
  set guioptions-=T "Removes top toolbar
  set guioptions-=r "Removes right hand scrollbar
  set guioptions-=L "Removes left hand scrollbar
end

" set termguicolors     " enable true colors support
" let ayucolor="dark" " for mirage version of theme
colorscheme ayu

" Source the vimrc file after saving it
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

let mapleader=',' " Use comma as <Leader> key instead of \

" General remapings
imap jj    <Esc>

" Buffer remapings
nnoremap <Leader>w <C-w>v<C-w>l " Open a vertical window and switch over it
nnoremap <Leader>W <C-w>s<C-w>j " Open a horizontal window and switch over it
nmap <Tab> <C-w>w

" Tagbar remaping
map <Leader>t :TagbarToggle<CR>

" Plugins
" Airline configuration
let g:airline_powerline_fonts = 1 " Use powerline fonts

" Invoke CtrlP
map <Leader>f :CtrlP<CR>
"map <Leader>b :CtrlPBuffer<CR>
"map <Leader>m :CtrlPMRU<CR>

" Tagbar
let g:tagbar_left=1

" Syntastic
let g:syntastic_mode_map={ "mode": "active", "passive_filetypes": ["scss"] }
let g:syntastic_ruby_checkers=['mri', 'rubocop']

" Enable this option to tell syntastic to always stick any detected errors into
" the location-list
let g:syntastic_always_populate_loc_list=1

" Use this option to tell syntastic to automatically open and/or close the
" location-list.
" When set to 1 the error window will be automatically opened when errors are
" detected, and closed when none are detected.
let g:syntastic_auto_loc_list=1

" If enabled, syntastic will error message associated with the current line to
" the command window. If multiple errors are found, the first will be used.
let g:syntastic_echo_current_error=1

" Use this option to tell syntastic whether to use the |:sign| interface to
" mark syntax errors:
let g:syntastic_enable_signs=1

" Use this option to control what the syntastic |:sign| text contains. Several
" error symobls can be customized:
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='!'
let g:syntastic_style_error_symbo='✗'
let g:syntastic_style_warning_symbol='!'
