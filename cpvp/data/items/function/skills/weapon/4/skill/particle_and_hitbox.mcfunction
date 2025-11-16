particle electric_spark ~ ~ ~ 0 0 0 0 0 force
execute if entity @s[tag=weapon4player2.tmp] run tag @s add weapon4player.tmp
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[dx=0,tag=playing] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function items:skills/weapon/4/hit
execute if entity @s[tag=weapon4player2.tmp] run tag @s remove weapon4player.tmp