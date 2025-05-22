execute as @s[tag=player,tag=alive] if score $phase main matches 3 run function system:eliminate
title @s title {"bold":true,"color":"white","text":"You died!"}
execute as @s at @s run playsound block.glass.break master @s ~ ~ ~ 1 0.2
scoreboard players operation @s hp = @s maxhp
scoreboard players operation @s mp = @s maxmp