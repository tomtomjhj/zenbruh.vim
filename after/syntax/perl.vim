if zen#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       ZenRed

" Builtin functions
hi! link perlOperator            ZenCyan
hi! link perlStatementFiledesc   ZenCyan
hi! link perlStatementFiles      ZenCyan
hi! link perlStatementFlow       ZenCyan
hi! link perlStatementHash       ZenCyan
hi! link perlStatementIOfunc     ZenCyan
hi! link perlStatementIPC        ZenCyan
hi! link perlStatementList       ZenCyan
hi! link perlStatementMisc       ZenCyan
hi! link perlStatementNetwork    ZenCyan
hi! link perlStatementNumeric    ZenCyan
hi! link perlStatementProc       ZenCyan
hi! link perlStatementPword      ZenCyan
hi! link perlStatementRegexp     ZenCyan
hi! link perlStatementScalar     ZenCyan
hi! link perlStatementSocket     ZenCyan
hi! link perlStatementTime       ZenCyan
hi! link perlStatementVector     ZenCyan

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd ZenRed
endif

" Signatures
hi! link perlSignature           ZenOrangeItalic
hi! link perlSubPrototype        ZenOrangeItalic

" Hash keys
hi! link perlVarSimpleMemberName ZenPurple
