tag @s add magic26ftmp
execute if score @s skills matches 100.. run kill @s
scoreboard players set @s counting 25
execute at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.25 3 normal

execute if score @s counting matches 1.. run function items:skills/magic/26/floop
tag @s remove magic26ftmp