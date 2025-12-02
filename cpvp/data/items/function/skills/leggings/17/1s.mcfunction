tag @s add leg17svictim

execute as @e[tag=leg17svictim,limit=1] run function effects:system/pick/ {id:54}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run tag @e[tag=leg17svictim] remove leg17svictim
execute if score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp

execute as @e[tag=leg17svictim] run function effects:system/pick/ {id:53}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level

scoreboard players add $tmp tmp 10
scoreboard players operation $tmp tmp += @s eng

execute store result storage cpvp:effect53 level int 1 run scoreboard players get $tmp tmp

tag @a[tag=leg17stmp] add buffer
execute as @e[tag=leg17svictim,limit=1] run function effects:system/gain/ with storage cpvp:effect53

data remove storage cpvp:effect53 level

execute at @s run playsound entity.firework_rocket.twinkle ambient @a ~ ~ ~ 0.6 1.9 0
execute at @s run particle electric_spark ~ ~1 ~ 0 0 0 1 7 normal

tag @s remove leg17svictim

scoreboard players reset $tmp tmp