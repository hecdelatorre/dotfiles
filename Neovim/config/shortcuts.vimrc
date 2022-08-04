" Coc
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
" Use <C-l> for trigger snippet expand.

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
" NERDTree
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>e :NERDTree<CR>
nmap <Leader>nr :NERDTreeRefreshRoot<CR>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader><F4> :q!<cr>

" Duplicate a line
nmap <leader>d 0v$yo<Esc>pji<del><Esc>k$
nmap <leader>c 0v$y$
nmap <leader>p o<Esc>pji<del><Esc>k$
nmap <leader>a ggvG$y 

" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap {<CR> {<CR>}<Esc>O
" inoremap [ []<Esc>i
" inoremap < <><Esc>i
" inoremap ' ''<Esc>i
" inoremap " ""<Esc>i
"
" Multi cursor
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
