if zen#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown {{{1
  hi! link htmlBold       ZenFgBold
  hi! link htmlBoldItalic ZenFgBoldItalic
  hi! link htmlH1         ZenGreenBold
  hi! link htmlItalic     ZenFgItalic
  hi! link mkdBlockquote  ZenFgItalic
  hi! link mkdBold        ZenFgBold
  hi! link mkdBoldItalic  ZenFgBoldItalic
  hi! link mkdCode        ZenSpecial
  hi! link mkdCodeEnd     ZenSpecial
  hi! link mkdCodeStart   ZenSpecial
  hi! link mkdHeading     ZenGreenBold
  hi! link mkdInlineUrl   ZenLink
  hi! link mkdItalic      ZenFgItalic
  hi! link mkdLink        ZenPink
  hi! link mkdListItem    ZenLightCyan
  hi! link mkdRule        ZenComment
  hi! link mkdUrl         ZenLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: {{{1
  hi! link markdownBlockquote        ZenLightCyan
  hi! link markdownBold              ZenFgBold
  hi! link markdownBoldItalic        ZenFgBoldItalic
  hi! link markdownCodeBlock         ZenSpecial
  hi! link markdownCode              ZenSpecial
  hi! link markdownCodeDelimiter     ZenSpecial
  hi! link markdownH1                ZenGreenBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ZenFgItalic
  hi! link markdownLinkText          ZenPink
  hi! link markdownListMarker        ZenLightCyan
  hi! link markdownOrderedListMarker ZenLightCyan
  hi! link markdownRule              ZenComment
  hi! link markdownUrl               ZenLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
