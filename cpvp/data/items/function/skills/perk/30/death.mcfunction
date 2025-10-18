execute if entity @s[tag=perk30activated] run return fail
scoreboard players operation @s hp = @s maxhp
scoreboard players operation @s hp /= $4 main
execute at @s run playsound item.totem.use player @a ~ ~ ~ 1 1 1 
execute at @s run particle totem_of_undying ~ ~ ~ 0 0 0 1 50 normal
tag @s add perk30activated