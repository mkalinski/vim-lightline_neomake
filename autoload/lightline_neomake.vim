" Copyright 2017 Michał Kaliński

if !exists('g:lightline_neomake#format')
	let lightline_neomake#format = '%s: %d'
endif

if !exists('g:lightline_neomake#sep')
	let lightline_neomake#sep = ' '
endif


function lightline_neomake#component() abort
	let stats = []
	let lcounts = neomake#statusline#LoclistCounts()
	for key in sort(keys(lcounts))
		call add(stats, printf(g:lightline_neomake#format, key, lcounts[key]))
	endfor
	return join(stats, g:lightline_neomake#sep)
endfunction
