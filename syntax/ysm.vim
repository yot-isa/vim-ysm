" Vim syntax file
" Language: Yot Assembly
" Maintainer: Karol Belina
" Version: v0.0.1

if exists("b:current_syntax")
  finish
endif

syntax iskeyword @,48-57,_,192-255,-,?,@-@,:,%,#,^
set iskeyword+=-
set iskeyword+=?
set iskeyword+=@-@
set iskeyword+=:
set iskeyword+=%
set iskeyword+=#
set iskeyword+=^ " Set as last

syntax match ysmIdentifier display "\<\k\+\>"
syntax match ysmLabels display "\<:\k*\>"

syntax match ysmKeyword display "\<brk?\?\>"
syntax match ysmKeyword display "\<nop?\?\>"
syntax match ysmKeyword display "\<jmp?\?\>"
syntax match ysmKeyword display "\<jsr?\?\>"
syntax match ysmKeyword display "\<nip?\?\>"
syntax match ysmKeyword display "\<dsp?\?\>"
syntax match ysmKeyword display "\<sei?\?\>"
syntax match ysmKeyword display "\<cli?\?\>"
syntax match ysmKeyword display "\<inc[1248^]?\?\>"
syntax match ysmKeyword display "\<add[1248^]?\?\>"
syntax match ysmKeyword display "\<dec[1248^]?\?\>"
syntax match ysmKeyword display "\<sub[1248^]?\?\>"
syntax match ysmKeyword display "\<eqz[1248^]?\?\>"
syntax match ysmKeyword display "\<nez[1248^]?\?\>"
syntax match ysmKeyword display "\<gth[1248^]?\?\>"
syntax match ysmKeyword display "\<lth[1248^]?\?\>"
syntax match ysmKeyword display "\<drp[1248^]?\?\>"
syntax match ysmKeyword display "\<dup[1248^]?\?\>"
syntax match ysmKeyword display "\<swp[1248^]?\?\>"
syntax match ysmKeyword display "\<ovr[1248^]?\?\>"
syntax match ysmKeyword display "\<rof[1248^]?\?\>"
syntax match ysmKeyword display "\<rob[1248^]?\?\>"
syntax match ysmKeyword display "\<sts[1248]?\?\>"
syntax match ysmKeyword display "\<fcm[1248]?\?\>"
syntax match ysmKeyword display "\<stm[1248]?\?\>"
syntax match ysmKeyword display "\<adc[1248]?\?\>"
syntax match ysmKeyword display "\<sbb[1248]?\?\>"
syntax match ysmKeyword display "\<bnt[1248]?\?\>"
syntax match ysmKeyword display "\<and[1248]?\?\>"
syntax match ysmKeyword display "\<ior[1248]?\?\>"
syntax match ysmKeyword display "\<xor[1248]?\?\>"
syntax match ysmKeyword display "\<shl[1248]?\?\>"
syntax match ysmKeyword display "\<shr[1248]?\?\>"

syntax match ysmHexInt display "[#%][0-9a-fA-F_]*"

syntax keyword ysmCommentTodo contained TODO FIXME NOTE XXX

syntax region ysmComment start=";" end="$" contains=ysmCommentTodo

highlight default link ysmKeyword    Keyword
highlight default link ysmLabels     Function
highlight default link ysmIdentifier Type
highlight default link ysmHexInt     Number

highlight default link ysmComment     Comment
highlight default link ysmCommentTodo Todo

let b:current_syntax = "ysm"
