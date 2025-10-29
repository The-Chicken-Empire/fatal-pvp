function effects:system/pick/ {id:46}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute as @a if score @s playerdata = @e[tag=magic48tmp3,limit=1] owner run tag @s add m48atker

scoreboard players operation $tmp2 tmp = @a[tag=m48atker,limit=1] physicaldmg
scoreboard players operation $tmp2 tmp *= $3 main
scoreboard players operation $tmp2 tmp /= $2 main

scoreboard players operation $tmp tmp += $tmp2 tmp

execute as @e[tag=atker] run function effects:system/pick/ {id:40}
scoreboard players set $tmp3 tmp 0
execute store result score $tmp3 tmp run data get storage effect: targeteffect.level
execute if score $tmp3 tmp matches 1.. run scoreboard players add $tmp tmp 5
scoreboard players reset $tmp3 tmp

execute store result storage cpvp:effect46 level int 1 run scoreboard players get $tmp tmp

tag @a[tag=m48atker] add buffer
function effects:system/gain/ with storage cpvp:effect46

data remove storage cpvp:effect46 level

tag @a[tag=m48atker] add buffer
function effects:system/gain/ {id:11,level:3,duration:80}

tag @a[tag=m48atker] remove m48atker