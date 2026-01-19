data remove storage cpvp:arrowtype id
execute if data entity @s item.components."minecraft:custom_data".cpvp.arrow store result storage cpvp:arrowtype id int 1 run data get entity @s item.components."minecraft:custom_data".cpvp.arrow
execute unless data entity @s item.components."minecraft:custom_data".cpvp.arrow run data modify storage cpvp:arrowtype id set value none
