" Palette: {{{

let g:zenbruh#palette           = {}
let g:zenbruh#palette.fg        = ['#eeeeee', 255]
let g:zenbruh#palette.fgdarkish = ['#d0d0d0', 252]
let g:zenbruh#palette.fgdark    = ['#bcbcbc', 250]

let g:zenbruh#palette.bglighter = ['#303030', 236]
let g:zenbruh#palette.bglight   = ['#262626', 235]
let g:zenbruh#palette.bg        = ['#1c1c1c', 234]
let g:zenbruh#palette.bgdark    = ['#121212', 233]
let g:zenbruh#palette.bgdarker  = ['#121212', 233]

let g:zenbruh#palette.comment   = ['#afd7af', 151]
let g:zenbruh#palette.selection = ['#626262', 241]
let g:zenbruh#palette.subtle    = ['#444444', 238]
let g:zenbruh#palette.special   = ['#ffd7d7', 224]

let g:zenbruh#palette.white     = ['#ffffff',  15]
let g:zenbruh#palette.black     = ['#000000',   0]
let g:zenbruh#palette.cyan      = ['#87d7d7', 116]
let g:zenbruh#palette.lightcyan = ['#afd7d7', 152]
let g:zenbruh#palette.green     = ['#afd75f', 149]
let g:zenbruh#palette.deepskyblue = ['#005f5f', 23]
let g:zenbruh#palette.orange    = ['#ffaf5f', 215]
let g:zenbruh#palette.mediumpurple = ['#5f5f87', 60]
let g:zenbruh#palette.pink      = ['#ffafd7', 218]
let g:zenbruh#palette.purple    = ['#d7afff', 183]
let g:zenbruh#palette.red       = ['#ff5f5f', 203]
let g:zenbruh#palette.redish    = ['#d78787', 174]
let g:zenbruh#palette.yellow    = ['#ffff87', 228]
let g:zenbruh#palette.yellowish = ['#ffd7af', 223]

"
" ANSI
"
" let g:zenbruh#palette.color_0  = '#21222C'
" let g:zenbruh#palette.color_1  = '#FF5555'
" let g:zenbruh#palette.color_2  = '#50FA7B'
" let g:zenbruh#palette.color_3  = '#F1FA8C'
" let g:zenbruh#palette.color_4  = '#BD93F9'
" let g:zenbruh#palette.color_5  = '#FF79C6'
" let g:zenbruh#palette.color_6  = '#8BE9FD'
" let g:zenbruh#palette.color_7  = '#F8F8F2'
" let g:zenbruh#palette.color_8  = '#6272A4'
" let g:zenbruh#palette.color_9  = '#FF6E6E'
" let g:zenbruh#palette.color_10 = '#69FF94'
" let g:zenbruh#palette.color_11 = '#FFFFA5'
" let g:zenbruh#palette.color_12 = '#D6ACFF'
" let g:zenbruh#palette.color_13 = '#FF92DF'
" let g:zenbruh#palette.color_14 = '#A4FFFF'
" let g:zenbruh#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! zenbruh#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'zenbruh'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
