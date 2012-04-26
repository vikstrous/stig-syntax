if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword stigKeyword package exists keys new length_of now real with reduce reverse_of session_id sorted_by start test that time_diff time_pnt user_id rhs lhs new desc asc is from in id given effecting where
syn match stigSpecial ">=\|<\[\|\]>\|<{\|}>\|<\|>\|->\|\.\.\|\.\|+\|!=\|!\|#\|%\|&\|-\|/\|<-\|<=\|==\|=\|?\|\^\||\|\[\|\]\|\\\|*=\|**\|*"

syn keyword stigPackage package

syn keyword stigBoolean true false
syn keyword stigConstant null known unknown empty free

syn match stigIdentifier "\.[_a-zA-Z][_a-zA-Z0-9]*"

syn keyword stigStatement else_if else if as and_then and or_else or xor not assert delete

syn match stigNumber "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match stigNumber "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\="
syn match stigNumber "\<\d\+[eE][-+]\=\d\+\>"
syn match stigNumber "\<\d\+\([eE][-+]\=\d\+\)\=\>"

syn match stigEmptyString "r\=\"\""
syn match stigEmptySingleString "r\=\'\'"
syn region stigString start="r\=\"[^"]" skip="\\\"" end="\"" contains=stigStringEscape
syn region stigSingleString start="r\=\'[^']" skip="\\\'" end="\'" contains=stigStringEscape
syn match stigStringEscape "\\u[0-9a-fA-F]\{4}" contained
syn match stigStringEscape "\\[nrfvb\\\"]" contained

syn keyword stigType int str bool

syn match stigLineComment "//.*"
syn region stigComment start="/\*" end="\*/"

hi link stigKeyword Keyword
hi link stigPackage Include
hi link stigBoolean Boolean
hi link stigConstant Constant
hi link stigNumber Number
hi link stigIdentifier Identifier
hi link stigSpecial Special
hi link stigStatement Statement
hi link stigEmptyString String
hi link stigEmptySingleString String
hi link stigString String
hi link stigSingleString String
hi link stigComment Comment
hi link stigLineComment Comment
hi link stigStringEscape Special
hi link stigType Type

let b:current_syntax = "stig"