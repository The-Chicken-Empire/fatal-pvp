#> items:triggers/tick/check
#
# 
#
# @within items:tick

execute if predicate items:triggers/right_click/mainhand run function items:triggers/right_click/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute unless predicate items:triggers/right_click/mainhand if predicate items:triggers/right_click/offhand run function items:triggers/right_click/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp

scoreboard players reset @s carrotuse