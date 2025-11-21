
execute as @e[tag=atker] run function damage:atktrigger/critical with storage atktrigger: hage
execute store result score $dummy random run random value 1..100
scoreboard players operation $dummy random -= $ccadd tmp
execute if score @a[tag=atker,limit=1] cc >= $dummy random run scoreboard players operation @s damagetaken *= $3 main
execute if score @a[tag=atker,limit=1] cc >= $dummy random run scoreboard players operation @s damagetaken /= $2 main
execute if score @a[tag=atker,limit=1] cc >= $dummy random at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 0.8
execute if score @a[tag=atker,limit=1] cc >= $dummy random at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.1 0.8 0.1 1 20 normal
execute if score @a[tag=atker,limit=1] cc >= $dummy random run tag @s add critical
scoreboard players reset $ccadd tmp

execute if entity @e[tag=victim,tag=critical] as @e[tag=atker,limit=1] run function items:triggers/critical/check