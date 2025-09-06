execute at @s positioned ~-1 ~-1 ~-1 as @e[dx=2,dy=2,dz=2,tag=playing] unless entity @s[tag=weapon5victmp] run function items:skills/weapon/5/hit
execute at @s run particle dust{color:[0.8,0,0],scale:2} ~ ~ ~ 2 2 2 1 200 force
kill @s