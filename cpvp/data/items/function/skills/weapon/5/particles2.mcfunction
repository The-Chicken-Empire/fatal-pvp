particle dust{color:[0.900,0.000,0.000],scale:2} ^ ^ ^4 0 0 0 1 0 force
execute positioned ^ ^ ^4 positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,tag=playing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless entity @s[tag=weapon5victmp] run function items:skills/weapon/5/hit
particle dust{color:[0.50,0.000,0.000],scale:2} ^ ^ ^3.6 0 0 0 1 0 force
execute positioned ^ ^ ^3.6 positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,tag=playing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless entity @s[tag=weapon5victmp] run function items:skills/weapon/5/hit
particle dust{color:[0.600,0.000,0.000],scale:2} ^ ^ ^3.2 0 0 0 1 0 force
execute positioned ^ ^ ^3.2 positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,tag=playing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless entity @s[tag=weapon5victmp] run function items:skills/weapon/5/hit
particle dust{color:[0.500,0.000,0.000],scale:2} ^ ^ ^2.8 0 0 0 1 0 force
execute positioned ^ ^ ^2.8 positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,tag=playing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless entity @s[tag=weapon5victmp] run function items:skills/weapon/5/hit
particle dust{color:[0.200,0.200,0.200],scale:2} ^ ^ ^2.4 0 0 0 1 0 force
execute positioned ^ ^ ^2.4 positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,tag=playing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless entity @s[tag=weapon5victmp] run function items:skills/weapon/5/hit
particle dust{color:[0.120,0.120,0.120],scale:2} ^ ^ ^2.0 0 0 0 1 0 force
execute positioned ^ ^ ^2.0 positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,tag=playing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless entity @s[tag=weapon5victmp] run function items:skills/weapon/5/hit
particle dust{color:[0.080,0.080,0.080],scale:2} ^ ^ ^1.6 0 0 0 1 0 force
execute positioned ^ ^ ^1.6 positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,tag=playing] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless entity @s[tag=weapon5victmp] run function items:skills/weapon/5/hit

scoreboard players add $tmp tmp 1
execute if score $tmp tmp matches 200.. run return run function items:skills/weapon/5/afterclean
execute facing ^0.04 ^ ^1 positioned ~ ~0.02 ~ run function items:skills/weapon/5/particles2