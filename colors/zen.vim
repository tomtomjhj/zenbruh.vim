" Zen Theme: {{{
"
" Copyright 2016, All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Trevor Heins <@heinst>
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Derek Sifford <dereksifford@gmail.com>
" @author Zeno Rocha <hi@zenorocha.com>
scriptencoding utf8
" }}}

" Configuration: {{{

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'zen'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: {{{2

let s:fg        = g:zen#palette.fg
let s:fgdarkish = g:zen#palette.fgdarkish
let s:fgdark    = g:zen#palette.fgdark

let s:bglighter = g:zen#palette.bglighter
let s:bglight   = g:zen#palette.bglight
let s:bg        = g:zen#palette.bg
let s:bgdark    = g:zen#palette.bgdark
let s:bgdarker  = g:zen#palette.bgdarker

let s:comment   = g:zen#palette.comment
let s:selection = g:zen#palette.selection
let s:subtle    = g:zen#palette.subtle
let s:special   = g:zen#palette.special

let s:white     = g:zen#palette.white
let s:black     = g:zen#palette.black
let s:cyan      = g:zen#palette.cyan
let s:lightcyan = g:zen#palette.lightcyan
let s:green     = g:zen#palette.green
let s:deepskyblue = g:zen#palette.deepskyblue
let s:orange    = g:zen#palette.orange
let s:mediumpurple = g:zen#palette.mediumpurple
let s:pink      = g:zen#palette.pink
let s:purple    = g:zen#palette.purple
let s:red       = g:zen#palette.red
let s:redish    = g:zen#palette.redish
let s:yellow    = g:zen#palette.yellow
let s:yellowish = g:zen#palette.yellowish

let s:none      = ['NONE', 'NONE']

" if has('nvim')
"   for s:i in range(16)
"     let g:terminal_color_{s:i} = g:zen#palette['color_' . s:i]
"   endfor
" endif

" if has('terminal')
"   let g:terminal_ansi_colors = []
"   for s:i in range(16)
"     call add(g:terminal_ansi_colors, g:zen#palette['color_' . s:i])
"   endfor
" endif

" }}}2
" User Configuration: {{{2

if !exists('g:zen_bold')
  let g:zen_bold = 1
endif

if !exists('g:zen_italic')
  let g:zen_italic = 1
endif

if !exists('g:zen_underline')
  let g:zen_underline = 1
endif

if !exists('g:zen_undercurl') && g:zen_underline != 0
  let g:zen_undercurl = 1
endif

if !exists('g:zen_inverse')
  let g:zen_inverse = 1
endif

if !exists('g:zen_colorterm')
  let g:zen_colorterm = 1
endif

"}}}2
" Script Helpers: {{{2

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
    let l:fg[0] = l:special[0]
    let l:fg[1] = l:special[1]
  endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
" Zen Highlight Groups: {{{2

call s:h('ZenBgLight', s:none, s:bglight)
call s:h('ZenBgLighter', s:none, s:bglighter)
call s:h('ZenBgDark', s:none, s:bgdark)
call s:h('ZenBgDarker', s:none, s:bgdarker)

call s:h('ZenFg', s:fg)
call s:h('ZenFgUnderline', s:fg, s:none, ['underline'])
call s:h('ZenFgBold', s:fg, s:none, ['bold'])
call s:h('ZenFgItalic', s:fg, s:none, ['italic'])
call s:h('ZenFgBoldItalic', s:fg, s:none, ['bold', 'italic'])
call s:h('ZenFgDark', s:fgdark)

call s:h('ZenComment', s:comment)
call s:h('ZenCommentBold', s:comment, s:none, ['bold'])

call s:h('ZenSelection', s:none, s:selection)

call s:h('ZenSubtle', s:subtle)

call s:h('ZenCyan', s:cyan)
call s:h('ZenCyanItalic', s:cyan, s:none, ['italic'])
call s:h('ZenLightCyan', s:lightcyan)

call s:h('ZenGreen', s:green)
call s:h('ZenGreenBold', s:green, s:none, ['bold'])
call s:h('ZenGreenItalic', s:green, s:none, ['italic'])

call s:h('ZenOrange', s:orange)
call s:h('ZenOrangeItalic', s:orange, s:none, ['italic'])
call s:h('ZenOrangeInverse', s:bg, s:orange)

call s:h('ZenPink', s:pink)
call s:h('ZenPinkItalic', s:pink, s:none, ['italic'])

call s:h('ZenPurple', s:purple)
call s:h('ZenPurpleBold', s:purple, s:none, ['bold'])
call s:h('ZenPurpleItalic', s:purple, s:none, ['italic'])

call s:h('ZenRed', s:red)
call s:h('ZenRedInverse', s:fg, s:red)
call s:h('ZenRedish', s:redish)

call s:h('ZenYellow', s:yellow)
call s:h('ZenYellowish', s:yellowish)
call s:h('ZenYellowishBold', s:yellowish, s:none, ['bold'])

call s:h('ZenError', s:red, s:none, [], s:red)

call s:h('ZenErrorLine', s:none, s:none, ['undercurl'], s:red)
call s:h('ZenWarnLine', s:none, s:none, ['undercurl'], s:orange)
call s:h('ZenInfoLine', s:none, s:none, ['undercurl'], s:cyan)

call s:h('ZenTodo', s:pink, s:none, ['bold', 'inverse'])
hi! ZenSearch cterm=reverse,bold gui=reverse,bold
call s:h('ZenBoundary', s:fgdarkish, s:bgdark)
call s:h('ZenLink', s:cyan, s:none, ['underline'])

call s:h('ZenDiffAdd', s:none, s:deepskyblue)
call s:h('ZenDiffChange', s:none, s:none)
call s:h('ZenDiffText', s:none, s:mediumpurple)
call s:h('ZenDiffDelete', s:red, s:bgdark)

call s:h('ZenSpecial', s:special)
" }}}2

" }}}
" User Interface: {{{

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:zen_colorterm == 1 ? s:bg : s:none)
call s:h('StatusLine', s:none, s:bglighter, ['bold'])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, ['bold'])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, ['bold'])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  ZenBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ZenYellow
hi! link DiffAdd      ZenDiffAdd
hi! link DiffAdded    DiffAdd
hi! link DiffChange   ZenDiffChange
hi! link DiffDelete   ZenDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     ZenDiffText
hi! link Directory    ZenPurpleBold
hi! link ErrorMsg     ZenRedInverse
hi! link FoldColumn   ZenSubtle
hi! link Folded       ZenBoundary
hi! link IncSearch    ZenOrangeInverse
" hi! link LineNr       ZenComment
hi LineNr guifg=#9fafaf  ctermfg=248 
hi! link MoreMsg      ZenFgBold
hi! link NonText      ZenSubtle
hi! link Pmenu        ZenBgDark
hi! link PmenuSbar    ZenBgDark
hi! link PmenuSel     ZenSelection
hi! link PmenuThumb   ZenSelection
hi! link Question     ZenFgBold
hi! link Search       ZenSearch
hi! link SignColumn   ZenComment
hi! link TabLine      ZenBoundary
hi! link TabLineFill  ZenBgDarker
hi! link TabLineSel   Normal
hi! link Title        ZenGreenBold
hi! link VertSplit    ZenBoundary
hi! link Visual       ZenSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ZenOrangeInverse

" }}}
" Syntax: {{{

" Required as some plugins will overwrite
call s:h('MatchParen', s:white, s:black, ['bold', 'underline'])
call s:h('Conceal', s:special, s:bg)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ZenRed
else
  hi! link SpecialKey ZenSubtle
endif

hi! link Comment ZenComment
hi! link Underlined ZenFgUnderline
hi! link Todo ZenTodo

hi! link Error ZenError
hi! link SpellBad ZenErrorLine
hi! link SpellLocal ZenWarnLine
hi! link SpellCap ZenInfoLine
hi! link SpellRare ZenInfoLine

hi! link Constant ZenLightCyan
hi! link String ZenRedish
hi! link Character ZenRedish
hi! link Number ZenPurple
hi! link Boolean ZenPurple
hi! link Float ZenPurple 

hi! link Identifier ZenSpecial
hi! link Function ZenGreen

hi! link Statement ZenYellowishBold
hi! link Conditional ZenYellowishBold
hi! link Repeat ZenYellowishBold
hi! link Label ZenYellowishBold
hi! link Operator ZenYellowish
hi! link Keyword ZenYellowishBold
hi! link Exception ZenYellowishBold

hi! link PreProc ZenYellowishBold
hi! link Include ZenYellowishBold
hi! link Define ZenYellowishBold
hi! link Macro ZenYellowishBold
hi! link PreCondit ZenYellowishBold
hi! link StorageClass ZenYellowishBold
hi! link Structure ZenYellowishBold
hi! link Typedef ZenYellowishBold

hi! link Type ZenCyan

hi! link Delimiter ZenFgDark

hi! link Special ZenSpecial
hi! link SpecialComment ZenCommentBold
hi! link Tag ZenCyan
hi! link helpHyperTextJump ZenLink
hi! link helpCommand ZenPurple
hi! link helpExample ZenGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
