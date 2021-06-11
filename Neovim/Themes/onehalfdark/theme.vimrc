" Theme
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
let g:lightline = {
\   'active': {
\	'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
\	'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
\   }, 
\   'inactive' : {
\	'left': [['inactive'], ['relativepath']],
\	'right': [['bufnum']]
\   },
\    'component': {
\	'bufnum': '%n',
\	'inactive': 'inactive'
\   },
\    'component_function': {
\	'gitbranch': 'fugitive#head'
\   },
\   'colorscheme': 'onehalfdark',
\   'subseparator': {
\	'left': '',
\	'right': ''
\   }
\}
