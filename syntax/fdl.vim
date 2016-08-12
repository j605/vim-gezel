 "Vim syntax file 
 "Language: Gezel
 " Maintainer: -
 " Last Change: 2005 Nov 08
 " Remark: This file is in the public domain

 if version < 600
   syntax clear
   elseif exists("b:current_syntax")
     finish
     endif

     :syntax case match

     :syntax keyword gezelReserved dp else fsm hardwired if initial in ipblock ipparm iptype lookup out reg sequencer sfg sig state stimulus system then use

     :syntax match gezelType /\v(ns|tc)\s*\(\s*(0x[0-9A-Fa-f]+|0b[01]+|[0-9]+)\s*\)/

     :syntax match gezelNumber /\v[-+]?<(0x[0-9A-Fa-f]+|0b[01]+|[0-9]+)/

     :syntax match gezelDebug /\v\$(bin|cycle|dec|display|dp|hex|trace|option|finish|sfg)/

     :syntax match gezelStateDecl /\v\@\w+>/

     :syntax region gezelString start=/"/ skip=/\\"/ end=/"\|\n/

     :syntax keyword gezelTodo contained TODO FIXME XXX

     :syntax match gezelComment /\/\/.*/ contains=gezelTodo
     :syntax region gezelComment start="/\*" end="\*/" contains=gezelTodo

     :highlight link gezelReserved Statement
     :highlight link gezelDebug Special
     :highlight link gezelStateDecl Function
     :highlight link gezelType Type
     :highlight link gezelString String
     :highlight link gezelNumber Number
     :highlight link gezelComment Comment
     :highlight link gezelTodo Todo

     let b:current_syntax = "gezel"
