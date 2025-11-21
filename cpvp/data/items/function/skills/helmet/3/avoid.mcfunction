scoreboard players set $dummy random 10000

execute at @s run playsound block.amethyst_block.fall block @s ~ ~ ~ 1 0 1
execute at @s run playsound block.amethyst_block.fall block @s ~ ~ ~ 1 0 1
execute at @s run playsound block.amethyst_block.fall block @s ~ ~ ~ 1 0 1

execute at @s run particle enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 1 10 normal

tag @s add buffer
execute as @a[tag=atker,limit=1] at @s run playsound block.sculk.place block @s ~ ~ ~ 1 0 1
execute as @a[tag=atker,limit=1] at @s run playsound block.sculk.place block @s ~ ~ ~ 1 0 1
execute as @a[tag=atker,limit=1] at @s run playsound block.sculk.place block @s ~ ~ ~ 1 0 1
execute as @a[tag=atker,limit=1] run function effects:system/gain/ {id:27,level:3,duration:140}

scoreboard players set $ct main 200
function api:ct/helmet