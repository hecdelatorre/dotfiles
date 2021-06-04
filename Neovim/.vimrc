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
Plug 'tomasiser/vim-code-dark'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'terryma/vim-multiple-cursors'
" Install extensions -> https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
call plug#end()

" Theme
colorscheme gruvbox	
let g:gruvbox_contrast_dark = 'dark'

let g:lightline = {
\    'active': {
\	'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
\	'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
\    }, 
\    'inactive' : {
\	'left': [['inactive'], ['relativepath']],
\	'right': [['bufnum']]
\    },
\    'component': {
\	'bufnum': '%n',
\	'inactive': 'inactive'
\    },
\    'component_function': {
\	'gitbranch': 'fugitive#head'
\    },
\    'colorscheme': 'darcula',
\    'subseparator': {
\	'left': '',
\	'right': ''
\    }
\}
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
nmap <Leader>e :NERDTree<CR>
nmap <Leader>nr :NERDTreeRefreshRoot<CR>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader><F4> :q!<cr>
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
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
""let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" pip install --no-cache-dir --upgrade --force-reinstall neovim
" pip3 install --no-cache-dir --upgrade --force-reinstall neovim
