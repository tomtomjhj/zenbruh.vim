if zenbruh#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! link shCmdSubRegion Delimiter
hi! link shArithRegion Delimiter
hi! link shCommandSub NONE
hi! link shArithmetic NONE
hi! link shShellVariables Identifier
hi! link shSpecial Constant
hi! link shSpecialDQ shSpecial
hi! link shSpecialSQ shSpecial
