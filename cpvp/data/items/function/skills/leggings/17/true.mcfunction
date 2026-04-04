execute store result score $tmp2 tmp run data get storage effect: targeteffect.level
scoreboard players add $tmp2 tmp 1
execute store result storage cpvp:effect54 level int 1 run scoreboard players get $tmp2 tmp
execute store result storage cpvp:effect54 duration int 1 run data get storage effect: targeteffect.duration
function effects:system/gain/ with storage cpvp:effect54