#> items:triggers/death/check
#
#
#
# @within damage:damage

#『滅亡』デバフによるトリガー無視処理
function effects:system/pick/ {id:44}
execute store result score $tmpeffect44 tmp run data get storage effect: targeteffect.level
scoreboard players operation $tmpeffect44 tmp *= $20 main
execute store result score $tmpeffect44 random run random value 1..100
execute if score $tmpeffect44 tmp >= $tmpeffect44 random run return run scoreboard players reset $tmpeffect44
scoreboard players reset $tmpeffect44

execute if predicate items:triggers/death/mainhand run function items:triggers/death/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/offhand run function items:triggers/death/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/helmet run function items:triggers/death/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/chestplate run function items:triggers/death/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/leggings run function items:triggers/death/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/boots run function items:triggers/death/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot0 run function items:triggers/death/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot1 run function items:triggers/death/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot2 run function items:triggers/death/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot3 run function items:triggers/death/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot4 run function items:triggers/death/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot5 run function items:triggers/death/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot6 run function items:triggers/death/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot7 run function items:triggers/death/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/death/slot8 run function items:triggers/death/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp