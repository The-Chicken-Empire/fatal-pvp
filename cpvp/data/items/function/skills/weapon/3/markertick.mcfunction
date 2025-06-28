execute if score @s skills matches 300 run tag @s add weapon3fin
execute if score @s skills matches 300 as @a if score @s playerdata = @e[tag=weapon3fin,limit=1] owner run function items:skills/weapon/3/deactive
execute if score @s skills matches 300 run kill @s