#
#
# 
#
#

execute if predicate items:triggers/using/mainhand run data modify storage cpvp:triggers/using slot set value mainhand
execute if predicate items:triggers/using/mainhand run function items:triggers/using/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute unless predicate items:triggers/using/mainhand if predicate items:triggers/using/offhand run data modify storage cpvp:triggers/using slot set value offhand
execute unless predicate items:triggers/using/mainhand if predicate items:triggers/using/offhand run function items:triggers/using/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp

advancement revoke @s only items:using