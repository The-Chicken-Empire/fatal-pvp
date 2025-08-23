execute if score @s weapon8 matches ..159 run return run scoreboard players set @s weapon8 0

scoreboard players set @s weapon8 0
scoreboard players operation @e[tag=victim,limit=1] damagetaken *= $2 main
scoreboard players add @s absorption 100
execute at @e[tag=victim,limit=1] run function items:skills/weapon/8/particle
execute at @s run playsound entity.warden.sonic_boom hostile @s ~ ~ ~ 1 2 1
execute as @a[tag=victim,limit=1] at @s run playsound entity.warden.sonic_boom hostile @s ~ ~ ~ 1 2 1