set number
set mouse=v
set numberwidth=3
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set noshowmode 	

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
