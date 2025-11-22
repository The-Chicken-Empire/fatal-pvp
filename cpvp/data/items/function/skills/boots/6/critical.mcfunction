tag @s add buffer
execute as @e[tag=victim,limit=1] run function effects:system/gain/ {id:44,duration:200,level:4}
scoreboard players add @e[tag=victim,limit=1] penetrate 20

execute as @e[tag=victim,limit=1] at @s run playsound entity.ravager.hurt hostile @a ~ ~ ~ 1 1.4 0
execute as @e[tag=victim,limit=1] at @s run particle soul ~ ~1 ~ 0.1 0.2 0.1 0.1 10 normal