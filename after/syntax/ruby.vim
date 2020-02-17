if zen#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ZenOrangeItalic
hi! link rubyBlockParameter         ZenOrangeItalic
hi! link rubyCurlyBlock             ZenPink
hi! link rubyGlobalVariable         ZenPurple
hi! link rubyInstanceVariable       ZenPurpleItalic
hi! link rubyInterpolationDelimiter ZenPink
hi! link rubyRegexpDelimiter        ZenRed
hi! link rubyStringDelimiter        ZenYellow
