scoreboard players add @e[tag=victim] damagetaken 10
scoreboard players set $heal main 10
execute as @e[tag=atker,limit=1] run function api:heal/
execute as @e[tag=victim,limit=1] at @s run playsound entity.creaking.attack hostile @a[distance=..16] ~ ~ ~ 1 1.5 0
execute as @e[tag=victim,limit=1] at @s run particle soul ~ ~1 ~ 0 0 0 0.1 4 normal