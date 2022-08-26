" Vim syntax file
" Language: The L Programming Language
" Maintainer: Brendan Berg
" Latest Revision: 22 March, 2017

if exists("b:current_syntax")
	finish
endif

" Numbers
syn match l_number '0'
syn match l_number '[+-]0'
syn match l_number '[1-9][0-9]*'
syn match l_number '[+-][1-9][0-9]*'

syn match l_number '0\.[0-9]*'
syn match l_number '[1-9][0-9]*\.[0-9]*'
syn match l_number '[+-]0\.[0-9]*'
syn match l_number '[+-][1-9][0-9]*\.[0-9]*'

syn match l_number '[1-9][0-9]*[eE][0-9]*'
syn match l_number '[1-9][0-9]*[eE][+-][0-9]*'
syn match l_number '[+-][1-9][0-9]*[eE][0-9]*'
syn match l_number '[+-][1-9][0-9]*[eE][+-][0-9]*'

syn match l_number '0\.[0-9]*[eE][0-9]*'
syn match l_number '0\.[0-9]*[eE][+-][0-9]*'
syn match l_number '[1-9][0-9]*\.[0-9]*[eE][0-9]*'
syn match l_number '[1-9][0-9]*\.[0-9]*[eE][+-][0-9]*'
syn match l_number '[+-]0\.[0-9]*[eE][0-9]*'
syn match l_number '[+-]0\.[0-9]*[eE][+-][0-9]*'
syn match l_number '[+-][1-9][0-9]*\.[0-9]*[eE][0-9]*'
syn match l_number '[+-][1-9][0-9]*\.[0-9]*[eE][+-][0-9]*'

" Strings
syn region l_string start='"' skip='\\.' end='"'
syn region l_string start="'" skip='\\.' end="'"

"syn region block start='{' end='}' fold transparent
"syn region l_expression start='' end=''

syn keyword l_todo contained TODO FIXME XXX NOTE
syn match l_comment '#.*$' contains=l_todo
syn region l_comment start='#-' end='-#' contains=l_todo

" Arguments
syn region l_parameters start='(' end=')' contains=l_paramname,l_paramSeparator
syn match l_paramName '[a-zA-Z_][a-zA-Z0-9_-]*' contained
syn match l_paramSeparator ':' contained

" Types
syn match l_typeIdentifier '[a-zA-Z_][a-zA-Z0-9_-]*' contained
syn region l_type start='<' end='>' contains=l_typeIdentifier containedin=l_expression

" Blocks
"syn region l_block start='{' end='}' fold

" Identifiers
syn match l_identifier '[a-zA-Z_][a-zA-Z0-9_-]*'

syn match l_arrow '->' display

syn match l_operator '\.\.'
syn match l_operator '\\/'
syn match l_operator '/\\'
" syn match l_operator '->'
" syn match l_operator '<-'
" syn match l_operator '??'
" syn match l_operator '<='
syn match l_operator '=='
" syn match l_operator '!='
" syn match l_operator '>='
syn match l_operator '<'
syn match l_operator '>'
" syn match l_operator '@'
syn match l_operator '+'
syn match l_operator '-'
syn match l_operator '\*'
syn match l_operator '/'
" syn match l_operator '%'
" syn match l_operator '&'
" syn match l_operator '^'

" syn keyword operator ... .. ~> <~ ?? <= == != >= @ + - * / % > < & ^

hi def link l_arrow Todo
hi def link l_identifier Identifier
hi def link l_comment Comment
hi def link l_todo Todo

hi def link l_operator Operator
hi def link l_number Number
hi def link l_string String

"hi def link block Statement
hi def link l_type Typedef
hi def link l_typeIdentifier Structure

hi def link l_parameters Normal
hi def link l_paramSeparator Special
hi def link l_paramName Typedef

let b:current_syntax = 'l'
