tag @s add buffer
execute as @e[tag=victim,limit=1] run function effects:system/pick/ {id:54}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
tag @s add buffer
execute if score $tmp tmp matches 1.. run function items:skills/leggings/17/true
execute if score $tmp tmp matches ..0 run function items:skills/leggings/17/not
execute as @e[tag=victim,limit=1] at @s run playsound entity.firework_rocket.twinkle block @a ~ ~ ~ 0.8 1.8 0
execute as @e[tag=victim,limit=1] at @s run playsound entity.firework_rocket.twinkle block @a ~ ~ ~ 0.8 1.6 0
execute as @e[tag=victim,limit=1] at @s run playsound entity.firework_rocket.twinkle block @a ~ ~ ~ 0.8 1.4 0
execute as @e[tag=victim,limit=1] at @s run particle electric_spark ~ ~1 ~ 0.4 0.8 0.4 0.2 20 force @a
execute as @e[tag=victim,limit=1] at @s run particle end_rod ~ ~1 ~ 0.4 0.8 0.4 0.2 10 force @a