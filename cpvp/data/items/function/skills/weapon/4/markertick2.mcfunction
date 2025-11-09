tag @s add weapon4marker2.tmp
execute as @e[tag=weapon4player2] if score @s playerdata = @n[tag=weapon4marker2.tmp] owner run tag @s add weapon4player2.tmp
execute if score @s skills matches 1 as @n[tag=weapon4player2.tmp] run function items:skills/weapon/4/skill/spear
execute if score @s skills matches 3 as @n[tag=weapon4player2.tmp] run function items:skills/weapon/4/skill/spear
execute if score @s skills matches 5 as @n[tag=weapon4player2.tmp] run function items:skills/weapon/4/skill/spear
execute if score @s skills matches 7 as @n[tag=weapon4player2.tmp] run function items:skills/weapon/4/skill/spear
execute if score @s skills matches 7 as @n[tag=weapon4player2.tmp] run tag @s remove weapon4hit
execute if score @s skills matches 7 run tag @n[tag=weapon4player2.tmp] remove weapon4player2
tag @s remove weapon4marker2.tmp
tag @e[tag=weapon4player2.tmp] remove weapon4player2.tmp

execute if score @s skills matches 7 run kill @s
