data modify entity @s crit set value 0b

data remove storage cpvp:arrowtype id
execute if data entity @s item.components."minecraft:custom_data".cpvp.arrowid store result storage cpvp:arrowtype id int 1 run data get entity @s item.components."minecraft:custom_data".cpvp.arrowid
execute store result storage cpvp:gundata id int 1 run data get entity @s weapon.components."minecraft:custom_data".cpvp.id
execute unless data entity @s item.components."minecraft:custom_data".cpvp.arrowid run data modify storage cpvp:arrowtype id set value none