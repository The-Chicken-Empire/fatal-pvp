scoreboard players reset $durabilitycheck main
execute store result score $durabilitycheck main run data get entity @s SelectedItem.components."minecraft:custom_data".cpvp.durability
execute if score $durabilitycheck main matches 1.. run return 1
execute if score $durabilitycheck main matches ..0 run return 0