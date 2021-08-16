if zenbruh#should_abort('lua')
    finish
endif

hi! link luaFunc  ZenbruhCyan
hi! link luaTable ZenbruhFg

" tbastos/vim-lua {{{

hi! link luaBraces       ZenbruhFg
hi! link luaBuiltIn      Constant
hi! link luaDocTag       Keyword
hi! link luaErrHand      ZenbruhCyan
hi! link luaFuncArgName  ZenbruhOrangeItalic
hi! link luaFuncCall     Function
hi! link luaLocal        Keyword
hi! link luaSpecialTable Constant
hi! link luaSpecialValue ZenbruhCyan

" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
