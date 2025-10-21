scoreboard players set @s effect46timer 0

#function effects:system/pick/ {id:46}
execute store result score $tmp tmp run data get storage effect: tmp2.level
scoreboard players remove $tmp tmp 15

execute if score $tmp tmp matches ..0 run tag @s add buffer
execute if score $tmp tmp matches ..0 run return run function effects:system/remove/ {id:46}


execute store result score $tmp2 tmp run data get storage effect: tmp2.buffer
execute as @a if score @s playerdata = $tmp2 tmp run tag @s add buffer
execute store result storage cpvp:effect46 level int 1 run scoreboard players get $tmp tmp
function effects:system/gain/ with storage cpvp:effect46
data remove storage cpvp:effect46 level
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp