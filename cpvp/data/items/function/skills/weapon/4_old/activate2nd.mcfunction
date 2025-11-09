tag @s add weapon4tmp
execute as @e[tag=weapon4-2] if score @s playerdata = @e[tag=weapon4tmp,limit=1] owner at @s positioned ~ ~0.4 ~ run function items:skills/weapon/4_old/active2
tag @s remove weapon4tmp