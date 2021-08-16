if zenbruh#should_abort('rst')
    finish
endif

hi! link rstComment                             Comment
hi! link rstTransition                          Comment
hi! link rstCodeBlock                           ZenbruhSpecial
hi! link rstInlineLiteral                       ZenbruhSpecial
hi! link rstLiteralBlock                        ZenbruhSpecial
hi! link rstQuotedLiteralBlock                  ZenbruhSpecial
hi! link rstStandaloneHyperlink                 ZenbruhLink
hi! link rstStrongEmphasis                      ZenbruhOrangeBold
hi! link rstSections                            ZenbruhPurpleBold
hi! link rstEmphasis                            ZenbruhYellowItalic
hi! link rstDirective                           Keyword
hi! link rstSubstitutionDefinition              Keyword
hi! link rstCitation                            String
hi! link rstExDirective                         String
hi! link rstFootnote                            String
hi! link rstCitationReference                   Tag
hi! link rstFootnoteReference                   Tag
hi! link rstHyperLinkReference                  Tag
hi! link rstHyperlinkTarget                     Tag
hi! link rstInlineInternalTargets               Tag
hi! link rstInterpretedTextOrHyperlinkReference Tag
hi! link rstTodo                                Todo
