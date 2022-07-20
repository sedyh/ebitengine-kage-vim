" Keywords
syn keyword kageKeyword package var func if else for return true false nil
syn keyword kageType    bool int float vec2 vec3 vec4 mat2 mat3 mat4
syn keyword kageBuiltin sin cos tan asin acos atan atan2 pow exp log  exp2 log2 sqrt inversesqrt abs sign floor ceil fract mod min max clamp mix step smoothstep length distance dot bcross normalize faceforward reflect refract transpose dfdx dfdy fwidth

" Matches
syn match kageNumber "\(\w\)\@<!\(0[xX]\(_\?[aAbBcCeEfF0-9]\)*\|0[bB]\(_\?[01]\)*\|0[oO]\?\(_\?[0-7]\)*\|\d\|\d\+\|\.\)\.\?[aAbBcCeEfFeEpP0-9]*\.\?\([-+]\?\d\+\)\?[aAbBcCeEfFeEpP0-9]*\([-+]\)\?i\?"
syn match kageFunction "\(func \)\@<=\([a-zA-Z][a-zA-Z0-9]\+\)\((\)\@="
syn match kageCall "\(func \)\@<![a-zA-Z][a-zA-Z0-9]\+\((.\+)\)\@="

" Regions
syn region kageComment start="//" end="$"
syn region kageComment start="/\*" end="\*/" fold
syn match  kageComment "\v(^\s*//.*\n)+" fold

" Highlighting
hi def link kageKeyword  Keyword
hi def link kageType     Type
hi def link kageBuiltin  Identifier
hi def link kageNumber   Number
hi def link kageFunction Function
hi def link kageCall     Tag
hi def link kageComment  Comment

" Syntax
let b:current_syntax = "kage"

