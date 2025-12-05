data remove storage cpvp:magic60 count
data remove storage cpvp:magic60 tgeffect

execute store result score $tmp4 tmp run data get storage cpvp:magic60 effects
scoreboard players remove $tmp4 tmp 1
execute store result storage cpvp:magic60 count int 1 run scoreboard players get $tmp4 tmp
scoreboard players reset $tmp4 tmp

function items:skills/magic/60/tgeffects with storage cpvp:magic60
function items:skills/magic/60/tgeffects2 with storage cpvp:magic60