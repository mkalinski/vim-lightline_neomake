# lightline\_neomake

Vim plugin providing a function intended as a tab component for
[lightline.vim](https://github.com/itchyny/lightline.vim).

Displays the number of warnings and errors for a file, after
[Neomake](https://github.com/neomake/neomake) finishes making it.

## Usage

```vim
let g:lightline = {
\	'component_function': {
\		'neomake': 'lightline_neomake#component',
\	},
\	'active': {
\		'right': [
\			['neomake', 'lineinfo'],
\			['percent'],
\			['fileformat', 'fileencoding', 'filetype'],
\		],
\	},
\}
```

The return value of `lightline_neomake#component` is compatible with
`component_expand`, so it's possible to color the neomake component to stand
out more.

```vim
let g:lightline = {
\	'component_expand': {
\		'neomake': 'lightline_neomake#component',
\	},
\	'component_type': {'neomake': 'error'},
\}
```

## Configuration

```vim
" printf-compatible string that accepts two values: the first is the symbol of
" a Neomake counter ('E' for errors, 'W' for warnings, etc.), the second is the
" number of occurrances in the buffer.
let g:lightline_neomake#format = '%s: %d'

" Separator between displayed Neomake counters.
let g:lightline_neomake#sep = ' '
```
