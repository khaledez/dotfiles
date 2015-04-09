set nocompatible           " be iMproved
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Manage Vundle by Vundle
Plugin 'gmarik/vundle'

" Color schema
Plugin 'altercation/vim-colors-solarized'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Sytastics
Plugin 'scrooloose/syntastic'

" Gradle syntax support
Plugin 'tfnico/vim-gradle'

" All of plugins must be added before the following line
call vundle#end()

"" General configuration
filetype plugin indent on
syntax on
set encoding=utf-8
set termencoding=utf-8

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"
" Color scheme 
" Get Mac Terminal Colors from:
" https://github.com/tomislav/osx-terminal.app-colors-solarized
"
set t_Co=256
set background=dark
colorscheme solarized

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again
" Allow using backspace and del keys for indentations, lineendings and
" linestarts
set backspace=indent,eol,start

" Showing line numbers and length
set number  " show line numbers
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent

" Searching
set hlsearch        " highlight matches
set incsearch       " incremental searching
set ignorecase      " searches are case insensitive...
set smartcase       " ... unless they contain at least one capital letter

" Disable backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Copy to clipboard for Max
map <leader>c :w !pbcopy<CR><CR>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
"noremap <C-n> :nohl<CR>
"vnoremap <C-n> :nohl<CR>
"inoremap <C-n> :nohl<CR>

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Powerline
" NOTE: Don't forget to install a font and configure the terminal to use it
" I prefer DejavuSansMono 
" https://github.com/Lokaltog/powerline-fonts
set laststatus=2
let g:Powerline_symbols='fancy'
set fillchars+=stl:\ ,stlnc:\

" Syntastic configuration
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
" Disable w3 syntax chcker. Horribly annoying on slow connections
let g:syntastic_html_checkers=['tidy']
