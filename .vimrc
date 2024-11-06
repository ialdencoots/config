set expandtab smarttab
set tabstop=4 shiftwidth=4
autocmd FileType elm setlocal tabstop=2 shiftwidth=2
autocmd FileType python setlocal tabstop=4 shiftwidth=4
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4
set number relativenumber
set hlsearch

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'henrik/vim-indexed-search'
Plugin 'lambdatoast/elm.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'psf/black'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

let NERDTreeIgnore = ['\.pyc$']

set belloff=all

augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

syntax on
filetype plugin indent on
