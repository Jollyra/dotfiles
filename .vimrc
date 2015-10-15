set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins
"========
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'gcmt/breeze.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'rking/ag.vim'
Plugin 'tomasr/molokai'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()
filetype plugin indent on

"General Config
"==============
let mapleader="\<space>"
set noerrorbells
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set showmode
set backspace=indent,eol,start
set showcmd
set autoread " Reload on change
set autoindent
set cursorline
set number
syntax on
autocmd BufWritePre * :%s/\s\+$//e "Strip trailing space on save

set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set wildmenu

"Escaping
"========
imap jk <Esc>
imap kj <Esc>

"Show nice tabs
"===============
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

"Styling
"=======
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

"Better Search
"=============
set ignorecase
set smartcase
set incsearch
set hlsearch

"Buffer Helpers
"===========
map <leader><left> :bp<cr>
map <leader><right> :bn<cr>

"Vmap for maintain Visual Mode after shifting > and <
"====================================================
vmap < <gv
vmap > >gv

"Tab Helpers
"===========
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-t>t :tabnew

"Git
"===
noremap <Leader>ga :!git add .<CR>
noremap <Leader>gc :!git commit -v<CR>
noremap <Leader>gp :!git push<CR>

"Vim-airline
"===========
let g:airline_theme='powerlineish'
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
set ttimeoutlen=50

"JSHint
"======
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_jshint_conf = '~/.jshintrc'
