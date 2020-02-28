" Palette: {{{

let g:zenbruh#palette           = {}
let g:zenbruh#palette.fg        = 255
let g:zenbruh#palette.fgdarkish = 252
let g:zenbruh#palette.fgdark    = 250

let g:zenbruh#palette.bglighter = 236
let g:zenbruh#palette.bglight   = 235
let g:zenbruh#palette.bg        = 234
let g:zenbruh#palette.bgdark    = 233
let g:zenbruh#palette.bgdarker  = 233

let g:zenbruh#palette.comment   = 151
let g:zenbruh#palette.selection = 239
let g:zenbruh#palette.subtle    = 238
let g:zenbruh#palette.special   = 224

let g:zenbruh#palette.white     =  15
let g:zenbruh#palette.black     =   0
let g:zenbruh#palette.cyan      = 116
let g:zenbruh#palette.lightcyan = 152
let g:zenbruh#palette.green     = 149
let g:zenbruh#palette.deepskyblue = 23
let g:zenbruh#palette.orange    = 215
let g:zenbruh#palette.mediumpurple = 60
let g:zenbruh#palette.pink      = 218
let g:zenbruh#palette.purple    = 183
let g:zenbruh#palette.red       = 203
let g:zenbruh#palette.redish    = 174
let g:zenbruh#palette.yellow    = 228
let g:zenbruh#palette.yellowish = 223

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
