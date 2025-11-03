tag @s add weapon18tmp
execute as @e[tag=weapon18player] if score @s playerdata = @n[tag=weapon18tmp] owner at @s run function items:skills/weapon/18/attack/
tag @s remove weapon18tmp
kill @s