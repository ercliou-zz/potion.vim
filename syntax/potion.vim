if exists("b:current_syntax")
    finish
endif

syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return
syntax keyword potionFunction print join string

syntax match potionComment "\v#.*$"
syntax match potionNumber "[0-9]"
" rule declared later has more priority
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link potionString String
highlight link potionFunction Function
highlight link potionKeyword Keyword
highlight link potionComment Comment
highlight link potionOperator Operator
highlight link potionNumber Number

let b:current_syntax = "potion"
