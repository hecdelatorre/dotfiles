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

" Closetag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" Disable espace errors 
let g:python_highlight_space_errors = 0

" Multi cursor
let g:multi_cursor_use_default_mapping=0

" coc
autocmd FileType scss setl iskeyword+=@-@
let g:coc_global_extensions = [
\    'coc-angular',
\    'coc-calc',
\    'coc-clang-format-style-options',
\    'coc-clangd',
\    'coc-cmake',
\    'coc-css',
\    'coc-cssmodules',
\    'coc-emmet',
\    'coc-highlight',
\    'coc-html-css-support',
\    'coc-html',
\    'coc-htmldjango',
\    'coc-java',
\    'coc-jedi',
\    'coc-json',
\    'coc-php-cs-fixer',
\    'coc-phpactor',
\    'coc-phpls',
\    'coc-prettier',
\    'coc-psalm',
\    'coc-pydocstring',
\    'coc-pyright',
\    'coc-python',
"\    'coc-rls',
\    'coc-rome',
\    'coc-rust-analyzer',
\    'coc-sh',
\    'coc-snippets',
\    'coc-sql',
\    'coc-sqlfluff',
\    'coc-stylelint',
\    'coc-stylelintplus',
\    'coc-svg',
\    'coc-tabnine',
\    'coc-tsserver',
\    'coc-vimlsp',
\    'coc-xml',
\]

"\    'coc-htmlhint',
"\    'coc-git',
"\    'coc-intelephense',
" Install extensions -> https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions

" Rust
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'xclip -selection clipboard'
