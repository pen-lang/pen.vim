if exists('b:current_syntax')
  finish
endif

let b:current_syntax = 'pen'

syn keyword penBoolean true false
syn keyword penNone none
syn keyword penConditional else if
syn keyword penExport export
syn keyword penForeign foreign
syn keyword penImport import
syn keyword penType any boolean error none number string
syn keyword penTypeDefinition type

syn match penComment "#.*"
syn match penDelimiter "[,()\[\]{}];'"
syn match penNumber "-\?\(\<\d\+\(\.\d\+\)\?\>\)"
syn match penOperator "\(&\||\|->\|=\|==\|/=\|<=\|>=\|<\|>\|+\|-\|*\|/\|?\|!\)"

syn region penString start="\"" skip="\\\"" end="\""

hi def link penBoolean Boolean
hi def link penComment Comment
hi def link penConditional Conditional
hi def link penDelimiter Delimiter
hi def link penExport PreProc
hi def link penForeign Keyword
hi def link penImport Include
hi def link penNone Constant
hi def link penNumber Number
hi def link penOperator Operator
hi def link penString String
hi def link penType Type
hi def link penTypeDefinition TypeDef
