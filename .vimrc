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
call plug#begin('~/.vim/plugged')
" Temas
Plug 'morhetz/gruvbox'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Install extensions -> https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
" c
"Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
"Plug 'ludwig/split-manpage.vim'

" go
"" Go Lang Bundle
"Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" html
"" HTML Bundle
"Plug 'hail2u/vim-css3-syntax'
"Plug 'gko/vim-coloresque'
"Plug 'tpope/vim-haml'
"Plug 'mattn/emmet-vim'

" javascript
"" Javascript Bundle
"Plug 'jelera/vim-javascript-syntax'

" php
"" PHP Bundle
"Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
"Plug 'stephpy/vim-php-cs-fixer'

" python
"" Python Bundle
"Plug 'davidhalter/jedi-vim'
"Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" ruby
"Plug 'tpope/vim-rails'
"Plug 'tpope/vim-rake'
"Plug 'tpope/vim-projectionist'
"Plug 'thoughtbot/vim-rspec'
"Plug 'ecomba/vim-ruby-refactoring', {'tag': 'main'}

" rust
" Vim racer
"Plug 'racer-rust/vim-racer'

" Rust.vim
"Plug 'rust-lang/rust.vim'

" Async.vim
"Plug 'prabirshrestha/async.vim'

" Vim lsp
"Plug 'prabirshrestha/vim-lsp'

" Asyncomplete.vim
"Plug 'prabirshrestha/asyncomplete.vim'

" Asyncomplete lsp.vim
"Plug 'prabirshrestha/asyncomplete-lsp.vim'


" svelte
"Plug 'leafOfTree/vim-svelte-plugin'


" typescript
"Plug 'leafgarland/typescript-vim'
"Plug 'HerringtonDarkholme/yats.vim'


" vuejs
"Plug 'posva/vim-vue'
"Plug 'leafOfTree/vim-vue-plugin'

call plug#end()
" Theme
colorscheme gruvbox	
let g:gruvbox_contrast_dark = "dark"

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" coc
autocmd FileType scss setl iskeyword+=@-@

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
" Use <C-l> for trigger snippet expand.
