scoreboard players set @s offhand4-1 0
execute if score $phase main matches 3 run scoreboard players remove $timer main 40
execute if score $phase main matches 3 at @s run playsound block.bell.resonate block @s ~ ~ ~ 1 2 1