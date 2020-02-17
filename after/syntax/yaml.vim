if zen#should_abort('yaml')
    finish
endif

hi! link yamlAlias           ZenGreenItalic
hi! link yamlAnchor          ZenPinkItalic
hi! link yamlBlockMappingKey ZenCyan
hi! link yamlFlowCollection  ZenPink
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         ZenPink
hi! link yamlPlainScalar     ZenYellow

