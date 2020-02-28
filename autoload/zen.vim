" Palette: {{{

let g:zen#palette           = {}
let g:zen#palette.fg        = 255
let g:zen#palette.fgdarkish = 252
let g:zen#palette.fgdark    = 250

let g:zen#palette.bglighter = 236
let g:zen#palette.bglight   = 235
let g:zen#palette.bg        = 234
let g:zen#palette.bgdark    = 233
let g:zen#palette.bgdarker  = 233

let g:zen#palette.comment   = 151
let g:zen#palette.selection = 239
let g:zen#palette.subtle    = 238
let g:zen#palette.special   = 224

let g:zen#palette.white     =  15
let g:zen#palette.black     =   0
let g:zen#palette.cyan      = 116
let g:zen#palette.lightcyan = 152
let g:zen#palette.green     = 149
let g:zen#palette.deepskyblue = 23
let g:zen#palette.orange    = 215
let g:zen#palette.mediumpurple = 60
let g:zen#palette.pink      = 218
let g:zen#palette.purple    = 183
let g:zen#palette.red       = 203
let g:zen#palette.redish    = 174
let g:zen#palette.yellow    = 228
let g:zen#palette.yellowish = 223

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
