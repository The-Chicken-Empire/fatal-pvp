tag @s add cp3tmp5

scoreboard players set @s counting 20
function items:skills/chestplate/3/loop

execute if score @s skills matches 30 run kill @s

tag @s remove cp3tmp5