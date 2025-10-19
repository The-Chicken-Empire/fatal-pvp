execute unless score @s damagetaken matches 100.. run return fail

execute as @a[tag=atker] at @s run playsound entity.puffer_fish.sting hostile @s ~ ~ ~ 1 0 1
execute as @a[tag=atker] at @s run particle warped_spore ~ ~ ~ 0 0 0 0.3 25 normal

tag @s add buffer
execute as @e[tag=atker,limit=1] run function effects:system/gain/ {id:44,level:3,duration:300}