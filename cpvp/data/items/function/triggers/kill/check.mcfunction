#> items:triggers/kill/check
#
#
#
# @within system:kill

execute if predicate items:triggers/kill/mainhand run function items:triggers/kill/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/offhand run function items:triggers/kill/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/helmet run function items:triggers/kill/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/chestplate run function items:triggers/kill/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/leggings run function items:triggers/kill/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/boots run function items:triggers/kill/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot0 run function items:triggers/kill/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot1 run function items:triggers/kill/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot2 run function items:triggers/kill/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot3 run function items:triggers/kill/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot4 run function items:triggers/kill/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot5 run function items:triggers/kill/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot6 run function items:triggers/kill/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot7 run function items:triggers/kill/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/kill/slot8 run function items:triggers/kill/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp