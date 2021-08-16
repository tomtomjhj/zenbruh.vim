if zenbruh#should_abort()
  finish
endif

" Fzf: {{{
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Search'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', 'ZenbruhOrange'],
    \ 'info':    ['fg', 'ZenbruhLightCyan'],
    \ 'prompt':  ['fg', 'ZenbruhGreen'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: {{{
if exists('g:ale_enabled')
  hi! link ALEError              ZenbruhErrorLine
  hi! link ALEWarning            ZenbruhWarnLine
  hi! link ALEInfo               ZenbruhInfoLine

  hi! link ALEErrorSign          ZenbruhRed
  hi! link ALEWarningSign        ZenbruhOrange
  hi! link ALEInfoSign           ZenbruhCyan

  hi! link ALEVirtualTextError   Comment
  hi! link ALEVirtualTextWarning Comment
endif
" }}}
" CtrlP: {{{
if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch     IncSearch
  hi! link CtrlPBufferHid Normal
endif
" }}}
" GitGutter / gitsigns: {{{
if exists('g:loaded_gitgutter')
  hi! link GitGutterAdd    DiffAdd
  hi! link GitGutterChange DiffChange
  hi! link GitGutterDelete DiffDelete
endif
if has('nvim-0.5') && luaeval("pcall(require, 'gitsigns')")
  " https://github.com/lewis6991/gitsigns.nvim requires nvim > 0.5
  " has('nvim-0.5') checks >= 0.5, so this should be future-proof.
  hi! link GitSignsAdd      DiffAdd
  hi! link GitSignsAddLn    DiffAdd
  hi! link GitSignsAddNr    DiffAdd
  hi! link GitSignsChange   DiffChange
  hi! link GitSignsChangeLn DiffChange
  hi! link GitSignsChangeNr DiffChange
  hi! link GitSignsDelete   DiffDelete
  hi! link GitSignsDeleteLn DiffDelete
  hi! link GitSignsDeleteNr DiffDelete
endif
" }}}
" Tree-sitter: {{{
" The nvim-treesitter library defines many global highlight groups that are
" linked to the regular vim syntax highlight groups. We only need to redefine
" those highlight groups when the defaults do not match the zenbruh
" specification.
" https://github.com/nvim-treesitter/nvim-treesitter/blob/master/plugin/nvim-treesitter.vim

" TODO(tomtomjhj): highlighting overwraps? e.g.
" * `Box::new(asdf)` Box: TSNamespace + TSType + TSConstant → cool
" * `Type::Constant` Constant: TSType + TSConstant → bad
" * `#[structopt(name = "asdf")]` "adsf": TSKeyword + TSString → very bad
if exists('g:loaded_nvim_treesitter')
  hi! link TSPunctSpecial Special
  " NOTE: nvim-treesitter doc is wrong?
  " hi! link TSConstMacro Macro
  " hi! link TSStringEscape Character
  " hi! link TSSymbol ZenbruhPurple
  " hi! link TSAnnotation ZenbruhYellow
  " hi! link TSAttribute ZenbruhGreenItalic
  hi! link TSFuncBuiltin Function " ZenbruhCyan
  " hi! link TSFuncMacro Function
  " hi! link TSParameter ZenbruhOrangeItalic
  " hi! link TSParameterReference ZenbruhOrange
  " NOTE: rust uses TSField for both struct def and field access
  hi! link TSField TSNone " ZenbruhOrange
  hi! link TSConstructor Constant " ZenbruhCyan
  " NOTE: rust lifetime is Label
  " hi! link TSLabel ZenbruhPurpleItalic
  hi! link TSVariableBuiltin Constant " ZenbruhPurpleItalic
  hi! link TSNamespace TSNone
  " # Text
  " hi! link TSStrong ZenbruhFgBold
  " hi! link TSEmphasis ZenbruhFg
  " hi! link TSUnderline Underlined
  " hi! link TSTitle ZenbruhYellow
  " hi! link TSLiteral ZenbruhYellow
  " hi! link TSURI ZenbruhYellow
  " HTML and JSX tag attributes. By default, this group is linked to TSProperty,
  " which in turn links to Identifer (white).
  " hi! link TSTagAttribute ZenbruhGreenItalic
endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
