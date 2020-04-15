" Zenbruh Theme: {{{
"
" Copyright 2016, All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Trevor Heins <@heinst>
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Derek Sifford <dereksifford@gmail.com>
" @author Zenbruho Rocha <hi@zenbruhorocha.com>
scriptencoding utf8
" }}}

" Configuration: {{{

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'zenbruh'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: {{{2

let s:fg        = g:zenbruh#palette.fg
let s:fgdarkish = g:zenbruh#palette.fgdarkish
let s:fgdark    = g:zenbruh#palette.fgdark

let s:bglighter = g:zenbruh#palette.bglighter
let s:bglight   = g:zenbruh#palette.bglight
let s:bg        = g:zenbruh#palette.bg
let s:bgdark    = g:zenbruh#palette.bgdark
let s:bgdarker  = g:zenbruh#palette.bgdarker

let s:comment   = g:zenbruh#palette.comment
let s:selection = g:zenbruh#palette.selection
let s:subtle    = g:zenbruh#palette.subtle
let s:special   = g:zenbruh#palette.special

let s:white     = g:zenbruh#palette.white
let s:black     = g:zenbruh#palette.black
let s:cyan      = g:zenbruh#palette.cyan
let s:lightcyan = g:zenbruh#palette.lightcyan
let s:green     = g:zenbruh#palette.green
let s:deepskyblue = g:zenbruh#palette.deepskyblue
let s:orange    = g:zenbruh#palette.orange
let s:mediumpurple = g:zenbruh#palette.mediumpurple
let s:pink      = g:zenbruh#palette.pink
let s:purple    = g:zenbruh#palette.purple
let s:red       = g:zenbruh#palette.red
let s:redish    = g:zenbruh#palette.redish
let s:yellow    = g:zenbruh#palette.yellow
let s:yellowish = g:zenbruh#palette.yellowish

let s:none      = 'NONE'

" if has('nvim')
"   for s:i in range(16)
"     let g:terminal_color_{s:i} = g:zenbruh#palette['color_' . s:i]
"   endfor
" endif

" if has('terminal')
"   let g:terminal_ansi_colors = []
"   for s:i in range(16)
"     call add(g:terminal_ansi_colors, g:zenbruh#palette['color_' . s:i])
"   endfor
" endif

" }}}2
" Script Helpers: {{{2

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, 'NONE')

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, 'NONE')
  if l:special !=# 'NONE' && l:fg ==# 'NONE' && !has('gui_running')
    let l:fg = l:special
  endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'ctermfg=' . l:fg,
        \ 'ctermbg=' . l:bg,
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special,
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
" Zenbruh Highlight Groups: {{{2

call s:h('ZenbruhBgLight', s:none, s:bglight)
call s:h('ZenbruhBgLighter', s:none, s:bglighter)
call s:h('ZenbruhBgDark', s:none, s:bgdark)
call s:h('ZenbruhBgDarker', s:none, s:bgdarker)

call s:h('ZenbruhFg', s:fg)
call s:h('ZenbruhFgUnderline', s:fg, s:none, ['underline'])
call s:h('ZenbruhFgBold', s:fg, s:none, ['bold'])
call s:h('ZenbruhFgItalic', s:fg, s:none, ['italic'])
call s:h('ZenbruhFgBoldItalic', s:fg, s:none, ['bold', 'italic'])
call s:h('ZenbruhFgDark', s:fgdark)

call s:h('ZenbruhComment', s:comment)
call s:h('ZenbruhCommentBold', s:comment, s:none, ['bold'])

call s:h('ZenbruhSelection', s:none, s:selection)

call s:h('ZenbruhSubtle', s:subtle)

call s:h('ZenbruhCyan', s:cyan)
call s:h('ZenbruhCyanItalic', s:cyan, s:none, ['italic'])
call s:h('ZenbruhLightCyan', s:lightcyan)

call s:h('ZenbruhGreen', s:green)
call s:h('ZenbruhGreenBold', s:green, s:none, ['bold'])
call s:h('ZenbruhGreenItalic', s:green, s:none, ['italic'])

call s:h('ZenbruhOrange', s:orange)
call s:h('ZenbruhOrangeItalic', s:orange, s:none, ['italic'])
call s:h('ZenbruhOrangeInverse', s:bg, s:orange)

call s:h('ZenbruhPink', s:pink)
call s:h('ZenbruhPinkItalic', s:pink, s:none, ['italic'])

call s:h('ZenbruhPurple', s:purple)
call s:h('ZenbruhPurpleBold', s:purple, s:none, ['bold'])
call s:h('ZenbruhPurpleItalic', s:purple, s:none, ['italic'])

call s:h('ZenbruhRed', s:red)
call s:h('ZenbruhRedInverse', s:fg, s:red)
call s:h('ZenbruhRedish', s:redish)

call s:h('ZenbruhYellow', s:yellow)
call s:h('ZenbruhYellowish', s:yellowish)
call s:h('ZenbruhYellowishBold', s:yellowish, s:none, ['bold'])

call s:h('ZenbruhError', s:red, s:none, [], s:red)

call s:h('ZenbruhErrorLine', s:none, s:none, ['undercurl'], s:red)
call s:h('ZenbruhWarnLine', s:none, s:none, ['undercurl'], s:orange)
call s:h('ZenbruhInfoLine', s:none, s:none, ['undercurl'], s:cyan)

call s:h('ZenbruhTodo', s:pink, s:none, ['bold', 'inverse'])
hi! ZenbruhSearch cterm=reverse,bold gui=reverse,bold
call s:h('ZenbruhBoundary', s:fgdarkish, s:bgdark)
call s:h('ZenbruhLink', s:cyan, s:none, ['underline'])

call s:h('ZenbruhDiffAdd', s:none, s:deepskyblue)
call s:h('ZenbruhDiffChange', s:none, s:none)
call s:h('ZenbruhDiffText', s:none, s:mediumpurple)
call s:h('ZenbruhDiffDelete', s:red, s:bgdark)

call s:h('ZenbruhSpecial', s:special)
" }}}2

" }}}
" User Interface: {{{

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, s:bg)
call s:h('NormalFloat', s:none, s:bglighter)
call s:h('StatusLine', s:none, s:bglighter, ['bold'])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, ['bold'])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, ['bold'])
call s:h('CursorLine', s:none, s:bglight)

hi! link ColorColumn  ZenbruhBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ZenbruhYellow
hi! link DiffAdd      ZenbruhDiffAdd
hi! link DiffChange   ZenbruhDiffChange
hi! link DiffDelete   ZenbruhDiffDelete
hi! link DiffText     ZenbruhDiffText
hi! link diffFile     ZenbruhGreen
hi! link diffNewFile  ZenbruhRed
hi! link diffAdded    ZenbruhGreen
hi! link diffLine     ZenbruhCyanItalic
hi! link diffRemoved  ZenbruhRed
hi! link Directory    ZenbruhPurpleBold
hi! link ErrorMsg     ZenbruhRedInverse
hi! link FoldColumn   ZenbruhSubtle
hi! link Folded       ZenbruhBoundary
hi! link IncSearch    ZenbruhOrangeInverse
" hi! link LineNr       ZenbruhComment
hi LineNr ctermfg=248
hi! link MoreMsg      ZenbruhFgBold
hi! link NonText      ZenbruhSubtle
hi! link Pmenu        ZenbruhBgDark
hi! link PmenuSbar    ZenbruhBgDark
hi! link PmenuSel     ZenbruhSelection
hi! link PmenuThumb   ZenbruhSelection
hi! link Question     ZenbruhFgBold
hi! link Search       ZenbruhSearch
hi! link SignColumn   ZenbruhComment
hi! link TabLine      ZenbruhBoundary
hi! link TabLineFill  ZenbruhBgDarker
hi! link TabLineSel   Normal
hi! link Title        ZenbruhGreenBold
hi! link VertSplit    ZenbruhBoundary
hi! link Visual       ZenbruhSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ZenbruhOrangeInverse

" }}}
" Syntax: {{{

" Required as some plugins will overwrite
call s:h('MatchParen', s:white, s:black, ['bold', 'underline'])
call s:h('Conceal', s:special, s:bg)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ZenbruhRed
else
  hi! link SpecialKey ZenbruhSubtle
endif

hi! link Comment ZenbruhComment
hi! link Underlined ZenbruhFgUnderline
hi! link Todo ZenbruhTodo

hi! link Error ZenbruhError
hi! link SpellBad ZenbruhErrorLine
hi! link SpellLocal ZenbruhWarnLine
hi! link SpellCap ZenbruhInfoLine
hi! link SpellRare ZenbruhInfoLine

hi! link Constant ZenbruhLightCyan
hi! link String ZenbruhRedish
hi! link Character ZenbruhRedish
hi! link Number ZenbruhPurple
hi! link Boolean ZenbruhPurple
hi! link Float ZenbruhPurple

hi! link Identifier ZenbruhSpecial
hi! link Function ZenbruhGreen

hi! link Statement ZenbruhYellowishBold
hi! link Conditional ZenbruhYellowishBold
hi! link Repeat ZenbruhYellowishBold
hi! link Label ZenbruhYellowishBold
hi! link Operator ZenbruhYellowish
hi! link Keyword ZenbruhYellowishBold
hi! link Exception ZenbruhYellowishBold

hi! link PreProc ZenbruhYellowishBold
hi! link Include ZenbruhYellowishBold
hi! link Define ZenbruhYellowishBold
hi! link Macro ZenbruhYellowishBold
hi! link PreCondit ZenbruhYellowishBold
hi! link StorageClass ZenbruhYellowishBold
hi! link Structure ZenbruhYellowishBold
hi! link Typedef ZenbruhYellowishBold

hi! link Type ZenbruhCyan

hi! link Delimiter ZenbruhFgDark

hi! link Special ZenbruhSpecial
hi! link SpecialComment ZenbruhCommentBold
hi! link Tag ZenbruhCyan
hi! link helpHyperTextJump ZenbruhLink
hi! link helpCommand ZenbruhPurple
hi! link helpExample ZenbruhGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
