scoreboard players reset $tmp random
execute store result score $tmp random run random value 1..100
execute unless score $tmp random matches 26..
scoreboard players operation $tmp tmp = @s damagetaken
scoreboard players operation $tmp tmp = $4 main
scoreboard players operation $tmp tmp = $10 main
scoreboard players operation @e[tag=atker,limit=1] mp -= $tmp tmp
scoreboard players reset $tmp random
scoreboard players reset $tmp tmp

execute at @s run playsound enchant.thorns.hit player @s ~ ~ ~ 1 1.5 1
execute as @a[tag=atker] at @s run playsound enchant.thorns.hit player @s ~ ~ ~ 1 0.8 1