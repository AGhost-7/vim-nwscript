" Vim syntax file
" Language: NwScript
" Latest Revision: 26th April 2015

if exists("b:current_syntax")
	finish
endif

syn keyword nssCond if else 
syn keyword nssTypes void int float string object itemproperty effect
syn keyword nssLoops while do for
syn keyword nssEsc break return
syn keyword nssGroups struct
" There's only one modifier in NwScript, and its const.
syn keyword nssMod const
" Is there EFFECT_INVALID as well? hemm...
syn keyword nssConst OBJECT_SELF OBJECT_INVALID

syn match nssIncl '#include\s+".+"'

syn region nssComment start='/\*' end='\*/'
syn match nssComment "//.*$"

syn region nssString start=+"+ end=+"+ end=+$+

syn match nssNum "\d+[.]{0,1}\d*[f]{0,1}"

let b:current_syntax = "nss"

hi def link nssCond Conditional
hi def link nssTypes Type

hi def link nssLoops Repeat
" for now...
hi def link nssEsc Repeat

hi def link nssGroups StorageClass
hi def link nssMod StorageClass

hi def link nssConst Constant

hi def link nssIncl PreProc

hi def link nssComment Comment

hi def link nssString String
hi def link nssNum Constant

