" Vim syntax file
" Language: Yot Assembly
" Maintainer: Karol Belina
" Version: v0.0.1

if exists("b:current_syntax")
  finish
endif

" Language keywords
syntax keyword ysmKeywords add1 add2 add4 add8
syntax keyword ysmKeywords pop1 pop2 pop4 pop8

" Comments
syntax region ysmComment start=";" end="$"

" Numbers
syntax match ysmBinInt display "%[01][01_]*"
syntax match ysmHexInt display "#[0-9a-fA-F][0-9a-fA-F_]*"

" Strings
syntax region ysmString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region ysmString start=/\v'/ skip=/\v\\./ end=/\v'/

" Set highlights
highlight default link ysmKeywords Keyword
highlight default link ysmComment Comment
highlight default link ysmBinInt Number
highlight default link ysmHexInt Number
highlight default link ysmString String

let b:current_syntax = "ysm"
