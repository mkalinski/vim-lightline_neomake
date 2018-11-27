" Copyright 2017 Michał Kaliński

if get(g:, 'loaded_lightline_neomake', 0)
	finish
endif
let loaded_lightline_neomake = 1


aug lightline_neomake
	au!
	au User NeomakeFinished nested call lightline#update()
aug END
