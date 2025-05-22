execute store result score $dummy itemcost run data get storage -dummy costcalc[0].components."minecraft:custom_data".cpvp.cost
scoreboard players operation @s itemcost += $dummy itemcost
scoreboard players add $dummy itemcount 1
execute if score @s itemcount > $dummy itemcount run function system:cost/costcalc2