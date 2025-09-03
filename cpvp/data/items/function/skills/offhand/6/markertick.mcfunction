tag @s add offhand6tmp2
execute as @a if score @s playerdata = @e[tag=offhand6tmp2,limit=1] owner run tag @s add offhand6tmp3

execute if score @s skills matches 2 as @e[tag=offhand6tmp3,limit=1] at @s run function items:skills/offhand/6/1
execute if score @s skills matches 4 as @e[tag=offhand6tmp3,limit=1] at @s run function items:skills/offhand/6/2
execute if score @s skills matches 6 as @e[tag=offhand6tmp3,limit=1] at @s run function items:skills/offhand/6/3
execute if score @s skills matches 8 as @e[tag=offhand6tmp3,limit=1] at @s run function items:skills/offhand/6/4
execute if score @s skills matches 10 as @e[tag=offhand6tmp3,limit=1] at @s run function items:skills/offhand/6/5

tag @e[tag=offhand6tmp3] remove offhand6tmp3
tag @s remove offhand6tmp2

execute if score @s skills matches 11.. run kill @s