"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|                         

syntax enable
set number
set relativenumber
set numberwidth=3
set mouse=a
set clipboard=unnamedplus
set showcmd
set ruler
set showmatch
set laststatus=2
set noshowmode 	
set encoding=utf-8
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on
let g:polyglot_disabled = ['markdown']

call plug#begin('~/.vim/plugins')
" Theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'itchyny/lightline.vim'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'
Plug 'rust-lang/rust.vim'
call plug#end()

"Theme
source $HOME/.config/nvim/theme.vimrc
" Plugins
source $HOME/.config/nvim/plugins.vimrc
" Keyboard shortcuts
source $HOME/.config/nvim/shortcuts.vimrc

" pip install --no-cache-dir --upgrade --force-reinstall neovim
" pip3 install --no-cache-dir --upgrade --force-reinstall neovim
