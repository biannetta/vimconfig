""" General Settings
set nocompatible
filetype off
syntax on
set ruler
set nowrap
set number
set background=dark
set showtabline=2
set noundofile
set laststatus=2
set guifont=Monaco\ for\ Powerline

""" Include Bundles with Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

""" Plugins
Plugin 'ctrlp/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'msanders/cocoa.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tommcdo/vim-lion'
Plugin 'dracula/vim'

call vundle#end()

filetype plugin on
syntax enable

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

""" Colour Preferences
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme dracula 
set cursorline
hi Directory term=bold cterm=bold ctermfg=6 guifg=Cyan

""" Syntax matching
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.hx set filetype=haxe

""" Bundle settings
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:ctrlp_open_new_file='h'
let NERDTreeDirArrows=0
autocmd vimenter * if !argc() | NERDTree | endif
hi SignColumn ctermbg=235

""" GitGutter Signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed = '-'

""" Key Mappings
nnoremap <buffer><F9> :exec '!python' shellescape(@%, 1)<cr>
