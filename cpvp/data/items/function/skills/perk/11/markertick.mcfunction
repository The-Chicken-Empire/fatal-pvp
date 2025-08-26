tag @s add perk11tmp2
execute if score @s skills matches 100 run data modify entity @s block_state set value {Name:"minecraft:medium_amethyst_bud"}
execute if score @s skills matches 200 run data modify entity @s block_state set value {Name:"minecraft:large_amethyst_bud"}
execute if score @s skills matches 300 run data modify entity @s block_state set value {Name:"minecraft:amethyst_cluster"}
 
execute at @s positioned ~-0.3 ~ ~-0.3 as @e[tag=playing,dx=1,dy=1,dz=1] positioned ~-0.4 ~-0.5 ~-0.4 if entity @s[dx=1,dy=1,dz=1] unless score @s teamscore = @e[tag=perk11tmp2,limit=1] teamscore run function items:skills/perk/11/growcheck

tag @s remove perk11tmp2
execute if score @s skills matches 500 at @s run playsound block.glass.break ambient @s ~ ~ ~ 1 1 0
execute if score @s skills matches 500 run kill @s
