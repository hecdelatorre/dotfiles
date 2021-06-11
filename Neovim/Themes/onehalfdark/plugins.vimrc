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
\    'coc-emmet',
\    'coc-highlight',
\    'coc-htmldjango',
\    'coc-angular',
\    'coc-calc',
\    'coc-clang-format-style-options',
\    'coc-clangd',
\    'coc-cmake',
\    'coc-css',
\    'coc-cssmodules',
\    'coc-html-css-support',
\    'coc-php-cs-fixer',
\    'coc-phpactor',
\    'coc-phpls',
\    'coc-prettier',
\    'coc-psalm',
\    'coc-pydocstring',
\    'coc-pyright',
\    'coc-python',
\    'coc-sh',
\    'coc-stylelintplus',
\    'coc-stylelint',
\    'coc-snippets',
\    'coc-sql',
\    'coc-sqlfluff',
\    'coc-svg',
\    'coc-html',
\    'coc-java',
\    'coc-jedi',
\    'coc-json',
\    'coc-tabnine',
\    'coc-tsserver',
\    'coc-vimlsp',
\    'coc-xml'
\]

"\    'coc-htmlhint',
"\    'coc-git',
"\    'coc-intelephense',
" Install extensions -> https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
