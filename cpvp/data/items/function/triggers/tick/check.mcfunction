#> items:triggers/tick/check
#
#
#
# @within items:tick

execute if predicate items:triggers/tick/mainhand run function items:triggers/tick/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/offhand run function items:triggers/tick/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/helmet run function items:triggers/tick/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/chestplate run function items:triggers/tick/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/leggings run function items:triggers/tick/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/boots run function items:triggers/tick/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot0 run function items:triggers/tick/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot1 run function items:triggers/tick/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot2 run function items:triggers/tick/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot3 run function items:triggers/tick/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot4 run function items:triggers/tick/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot5 run function items:triggers/tick/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot6 run function items:triggers/tick/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot7 run function items:triggers/tick/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/tick/slot8 run function items:triggers/tick/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp
