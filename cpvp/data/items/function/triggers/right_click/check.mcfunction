#> items:triggers/tick/check
#
# 
#
# @within items:tick

execute if predicate items:triggers/right_click/mainhand run data modify storage cpvp:triggers/right_click slot set value mainhand
execute if predicate items:triggers/right_click/mainhand run function items:triggers/right_click/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute unless predicate items:triggers/right_click/mainhand if predicate items:triggers/right_click/offhand run data modify storage cpvp:triggers/right_click slot set value offhand
execute unless predicate items:triggers/right_click/mainhand if predicate items:triggers/right_click/offhand run function items:triggers/right_click/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp

scoreboard players reset @s carrotuse