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
set shiftwidth=4
set tabstop=4
set laststatus=2
set noshowmode 	
set encoding=utf-8

call plug#begin('~/.vim/plugins')
" Theme
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'terryma/vim-multiple-cursors'
call plug#end()

" Theme
source $HOME/.config/nvim/theme.vimrc
" Plugins
source $HOME/.config/nvim/plugins.vimrc
" Keyboard shortcuts
source $HOME/.config/nvim/shortcuts.vimrc

" pip install --no-cache-dir --upgrade --force-reinstall neovim
" pip3 install --no-cache-dir --upgrade --force-reinstall neovim
