# lightline\_neomake

Vim plugin providing a function intended as a tab component for
[lightline.vim](https://github.com/itchyny/lightline.vim).

Displays the number of warnings and errors for a file, after
[Neomake](https://github.com/neomake/neomake) finishes making it.

## Usage

The function `lightline_neomake#component` returns a string with names of each
non-zero Neomake counter ("W", "E", etc.) and their values. It can be used with
`component_expand` and `component_type` to color the component.

```vim
let g:lightline = {
\   'active': {
\       'right': [
\           ['neomake', 'lineinfo'],
\           ['percent'],
\           ['fileformat', 'fileencoding', 'filetype'],
\       ],
\   },
\   'component_expand': {
\       'neomake': 'lightline_neomake#component',
\   },
\   'component_type': {
\       'neomake': 'error',
\   },
\}
```

## Configuration

Default values are shown in examples.

```vim
" printf-compatible string that accepts two values: the first is the symbol of
" a Neomake counter ('E' for errors, 'W' for warnings, etc.), the second is the
" number of occurrances in the buffer.
let g:lightline_neomake#format = '%s: %d'

" Separator between displayed Neomake counters.
let g:lightline_neomake#sep = ' '
```
