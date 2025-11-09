tag @s add weapon4marker.tmp
execute as @e[tag=weapon4player] if score @s playerdata = @n[tag=weapon4marker.tmp] owner run tag @s add weapon4player.tmp
execute if score @s skills matches 1 as @n[tag=weapon4player.tmp] run function items:skills/weapon/4/skill/spear
execute if score @s skills matches 4 as @n[tag=weapon4player.tmp] run function items:skills/weapon/4/skill/spear
execute if score @s skills matches 7 as @n[tag=weapon4player.tmp] run function items:skills/weapon/4/skill/spear
execute if score @s skills matches 7 as @n[tag=weapon4player.tmp] if entity @s[tag=weapon4hit] run function items:skills/weapon/4/ctreset
execute if score @s skills matches 7 run tag @n[tag=weapon4player.tmp] remove weapon4player
tag @s remove weapon4marker.tmp
tag @e[tag=weapon4player.tmp] remove weapon4player.tmp

execute if score @s skills matches 7 run kill @s