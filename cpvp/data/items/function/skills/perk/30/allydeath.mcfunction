execute if entity @s[tag=perk30activated] run return fail
scoreboard players operation @e[tag=victim,limit=1] hp = @e[tag=victim,limit=1] maxhp
scoreboard players operation @e[tag=victim,limit=1] hp /= $4 main
execute at @e[tag=victim,limit=1] run playsound item.totem.use player @a ~ ~ ~ 1 1 1 
execute at @e[tag=victim,limit=1] run particle totem_of_undying ~ ~ ~ 0 0 0 1 50 normal
tag @s add perk30activated