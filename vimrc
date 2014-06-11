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
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

""" Plugins
Plugin 'aaronjensen/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tommcdo/vim-lion'
Plugin 'wakatime/vim-wakatime'

call vundle#end()

filetype plugin on
syntax enable

""" Colour Preferences
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized 
set cursorline
hi Directory term=bold cterm=bold ctermfg=6 guifg=Cyan

""" Syntax matching
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.hx set filetype=haxe

""" Bundle settings
let g:airline_theme='dark'
let g:airline_powerline_fonts=1
let g:ctrlp_open_new_file='h'
let NERDTreeDirArrows=0
autocmd vimenter * if !argc() | NERDTree | endif
hi SignColumn ctermbg=235
set statusline+=%{fugitive#statusline()}

""" GitGutter Signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed = '-'

""" Key Mappings
nnoremap <silent><C-d> :NERDTreeToggle<CR>
nnoremap <buffer><F9> :exec '!python' shellescape(@%, 1)<cr>
