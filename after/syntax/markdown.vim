if zenbruh#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown {{{1
  hi! link htmlTag        ZenbruhFg
  hi! link htmlArg        ZenbruhGreenItalic
  hi! link htmlTitle      ZenbruhFg
  hi! link htmlSpecialChar ZenbruhPurple
  hi! link htmlBold       ZenbruhFgBold
  hi! link htmlBoldItalic ZenbruhFgBoldItalic
  hi! link htmlH1         ZenbruhGreenBold
  hi! link htmlItalic     ZenbruhFgItalic
  hi! link mkdBlockquote  ZenbruhFgItalic
  hi! link mkdBold        ZenbruhFgBold
  hi! link mkdBoldItalic  ZenbruhFgBoldItalic
  hi! link mkdCode        ZenbruhSpecial
  hi! link mkdCodeEnd     ZenbruhSpecial
  hi! link mkdCodeStart   ZenbruhSpecial
  hi! link mkdHeading     ZenbruhGreenBold
  hi! link mkdInlineUrl   ZenbruhLink
  hi! link mkdItalic      ZenbruhFgItalic
  hi! link mkdLink        ZenbruhPink
  hi! link mkdListItem    ZenbruhLightCyan
  hi! link mkdRule        ZenbruhComment
  hi! link mkdUrl         ZenbruhLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: {{{1
  hi! link markdownBlockquote        ZenbruhLightCyan
  hi! link markdownBold              ZenbruhFgBold
  hi! link markdownBoldItalic        ZenbruhFgBoldItalic
  hi! link markdownCodeBlock         ZenbruhSpecial
  hi! link markdownCode              ZenbruhSpecial
  hi! link markdownCodeDelimiter     ZenbruhSpecial
  hi! link markdownH1                ZenbruhGreenBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ZenbruhFgItalic
  hi! link markdownLinkText          ZenbruhPink
  hi! link markdownListMarker        ZenbruhLightCyan
  hi! link markdownOrderedListMarker ZenbruhLightCyan
  hi! link markdownRule              ZenbruhComment
  hi! link markdownUrl               ZenbruhLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
