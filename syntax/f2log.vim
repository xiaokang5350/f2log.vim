if exists("b:current_syntax")
    finish
endif

syn keyword logLevelDbg DBG
syn keyword logLevelInf INF
syn keyword logLevelWar WAR
syn keyword logLevelErr ERR
syn keyword logLevelFat FAT
syn match logTime "^\[[0-9]\+-[0-9]\+:[0-9]\+:[0-9]\+.[0-9]\+\]" 
syn match logMessage "- .* ---"me=e-3
syn match Comment '--- .*' conceal

hi def link logLevelDbg Identifier
hi def link logLevelInf Identifier
hi def link logLevelWar Type
hi def link logLevelErr Error
hi def link logLevelFat Error
hi def link logTime Number
hi def link logMessage Normal

let b:current_syntax = "f2log"
