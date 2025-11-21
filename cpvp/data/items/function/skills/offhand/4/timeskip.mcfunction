scoreboard players set @s offhand4-1 0
scoreboard players set $time main 40
function api:time/
execute if score $phase main matches 3 at @s run playsound block.bell.resonate block @s ~ ~ ~ 1 2 1