execute unless entity @e[tag=victim,tag=meleevictim] run return fail

tag @s add buffer
execute as @e[tag=victim] run function effects:system/gain/ {id:11,duration:80,level:2}
execute as @e[tag=victim] at @s run playsound block.slime_block.place block @s ~ ~ ~ 1 1 1