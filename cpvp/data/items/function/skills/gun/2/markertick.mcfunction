#さぼてん
tag @s add range2tmp2

execute at @s positioned ~-0.4 ~ ~-0.4 as @e[tag=playing,dx=0,dy=0,dz=0] positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] unless score @s teamscore = @e[tag=range2tmp2,limit=1] teamscore run function items:skills/gun/2/hit

tag @s remove range2tmp2
execute if score @s skills matches 120.. run kill @s
