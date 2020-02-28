if zenbruh#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          ZenbruhOrangeItalic
hi! link rubyBlockParameter         ZenbruhOrangeItalic
hi! link rubyCurlyBlock             ZenbruhPink
hi! link rubyGlobalVariable         ZenbruhPurple
hi! link rubyInstanceVariable       ZenbruhPurpleItalic
hi! link rubyInterpolationDelimiter ZenbruhPink
hi! link rubyRegexpDelimiter        ZenbruhRed
hi! link rubyStringDelimiter        ZenbruhYellow
