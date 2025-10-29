tag @s add magic48tmp5
execute at @s run particle minecraft:crimson_spore ~ ~ ~ 1 0 1 0.1 10 normal

execute at @s positioned ~-1.5 ~ ~-1.5 as @e[tag=playing,dx=2,dy=1.5,dz=2] unless score @s teamscore = @e[tag=magic48tmp5,limit=1] teamscore run tag @s add magic48hit

tag @s remove magic48tmp5


kill @s