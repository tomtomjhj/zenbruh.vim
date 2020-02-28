if zenbruh#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ZenbruhRed

" Builtin functions
hi! link perlOperator            ZenbruhCyan
hi! link perlStatementFiledesc   ZenbruhCyan
hi! link perlStatementFiles      ZenbruhCyan
hi! link perlStatementFlow       ZenbruhCyan
hi! link perlStatementHash       ZenbruhCyan
hi! link perlStatementIOfunc     ZenbruhCyan
hi! link perlStatementIPC        ZenbruhCyan
hi! link perlStatementList       ZenbruhCyan
hi! link perlStatementMisc       ZenbruhCyan
hi! link perlStatementNetwork    ZenbruhCyan
hi! link perlStatementNumeric    ZenbruhCyan
hi! link perlStatementProc       ZenbruhCyan
hi! link perlStatementPword      ZenbruhCyan
hi! link perlStatementRegexp     ZenbruhCyan
hi! link perlStatementScalar     ZenbruhCyan
hi! link perlStatementSocket     ZenbruhCyan
hi! link perlStatementTime       ZenbruhCyan
hi! link perlStatementVector     ZenbruhCyan

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ZenbruhRed
endif

" Signatures
hi! link perlSignature           ZenbruhOrangeItalic
hi! link perlSubPrototype        ZenbruhOrangeItalic

" Hash keys
hi! link perlVarSimpleMemberName ZenbruhPurple
