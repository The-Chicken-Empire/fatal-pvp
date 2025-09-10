tag @s add leggings1hit
execute as @a if score @s playerdata = @e[tag=leggings1hit,limit=1] target run function items:skills/leggings/1/hit
tag @s remove leggings1hit