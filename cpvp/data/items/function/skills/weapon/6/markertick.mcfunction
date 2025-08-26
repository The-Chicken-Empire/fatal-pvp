tag @s add weapon6tmp2
execute as @a if score @s playerdata = @e[tag=weapon6tmp2,limit=1] owner run tag @s add weapon6tmp3
execute if score @s skills matches 30 as @a if score @s playerdata = @e[tag=weapon6tmp2,limit=1] owner at @s summon marker run function items:skills/weapon/6/summonmarker3

execute if score @s skills matches 31.. run kill @s
tag @a remove weapon6tmp3
tag @s remove weapon6tmp2