if zen#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    ZenGreen
hi! link diffNewFile ZenRed

hi! link diffAdded   ZenGreen
hi! link diffLine    ZenCyanItalic
hi! link diffRemoved ZenRed

