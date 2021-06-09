" Theme
colorscheme gruvbox	
let g:gruvbox_contrast_dark = 'dark'
highlight Normal ctermbg=NONE

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
\    'colorscheme': 'gruvbox',
\    'subseparator': {
\	'left': '',
\	'right': ''
\    }
\}
