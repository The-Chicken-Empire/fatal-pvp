tag @s add magic40tmp3
scoreboard players add @s counting 1
execute if score @s counting matches 3 run particle happy_villager ~ ~0.2 ~ 0 0 0 0 1
execute if score @s counting matches 3 run scoreboard players set @s counting 0

execute if score @s skills matches 60 run function items:skills/magic/40/explode
tag @s remove magic40tmp3
execute if score @s skills matches 61.. run kill @s