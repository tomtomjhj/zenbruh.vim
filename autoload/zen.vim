" Palette: {{{

let g:zen#palette           = {}
let g:zen#palette.fg        = ['#F8F8F2', 255]
let g:zen#palette.fgdarkish = ['#d0d0d0', 252]
let g:zen#palette.fgdark    = ['#bcbcbc', 250]

let g:zen#palette.bglighter = ['#424450', 236]
let g:zen#palette.bglight   = ['#343746', 235]
let g:zen#palette.bg        = ['#1c1c1c', 234]
let g:zen#palette.bgdark    = ['#121212', 233]
let g:zen#palette.bgdarker  = ['#121212', 233]

let g:zen#palette.comment   = ['#afd7af', 151]
let g:zen#palette.selection = ['#44475A', 239]
let g:zen#palette.subtle    = ['#424450', 238]
let g:zen#palette.special   = ['#ffd7d7', 224]

let g:zen#palette.white     = ['#FFFFFF',  15]
let g:zen#palette.black     = ['#000000',   0]
let g:zen#palette.cyan      = ['#87d7d7', 116]
let g:zen#palette.lightcyan = ['#afd7d7', 152] 
let g:zen#palette.green     = ['#afd75f', 149]
let g:zen#palette.deepskyblue = ['#005f5f', 23]
let g:zen#palette.orange    = ['#FFB86C', 215]
let g:zen#palette.mediumpurple = ['#5f5f87', 60]
let g:zen#palette.pink      = ['#ffafd7', 218]
let g:zen#palette.purple    = ['#d7afff', 183]
let g:zen#palette.red       = ['#FF5555', 203]
let g:zen#palette.redish    = ['#d78787', 174]
let g:zen#palette.yellow    = ['#F1FA8C', 228]
let g:zen#palette.yellowish = ['#ffd7af', 223]

"
" ANSI
"
" let g:zen#palette.color_0  = '#21222C'
" let g:zen#palette.color_1  = '#FF5555'
" let g:zen#palette.color_2  = '#50FA7B'
" let g:zen#palette.color_3  = '#F1FA8C'
" let g:zen#palette.color_4  = '#BD93F9'
" let g:zen#palette.color_5  = '#FF79C6'
" let g:zen#palette.color_6  = '#8BE9FD'
" let g:zen#palette.color_7  = '#F8F8F2'
" let g:zen#palette.color_8  = '#6272A4'
" let g:zen#palette.color_9  = '#FF6E6E'
" let g:zen#palette.color_10 = '#69FF94'
" let g:zen#palette.color_11 = '#FFFFA5'
" let g:zen#palette.color_12 = '#D6ACFF'
" let g:zen#palette.color_13 = '#FF92DF'
" let g:zen#palette.color_14 = '#A4FFFF'
" let g:zen#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! zen#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'zen'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
