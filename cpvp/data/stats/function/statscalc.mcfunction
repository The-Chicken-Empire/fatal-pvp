scoreboard players set @s maxhp 0
scoreboard players set @s maxmp 0
scoreboard players set @s mr 0
scoreboard players set @s physicaldef 0
scoreboard players set @s magicdef 0
scoreboard players set @s meleedef 0
scoreboard players set @s rangedef 0
scoreboard players set @s speed 0
scoreboard players set @s vit 0
scoreboard players set @s physicaldmg 0
scoreboard players set @s magicdmg 0
scoreboard players set @s meleedmg 0
scoreboard players set @s rangedmg 0
scoreboard players set @s cc 0
scoreboard players set @s agi 0
scoreboard players set @s maxeng 0
scoreboard players set $dummy statscalc 0

data modify storage cpvp:stats $stats set from entity @s
data remove storage cpvp:stats $dummy

execute if predicate stats:mainhanditem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.SelectedItem.components.minecraft:custom_data.cpvp.stats.mainhand
execute if predicate stats:mainhanditem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:offhanditem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.equipment.offhand.components.minecraft:custom_data.cpvp.stats.offhand
execute if predicate stats:offhanditem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:headitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.equipment.head.components.minecraft:custom_data.cpvp.stats.helmet
execute if predicate stats:headitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:chestitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.equipment.chest.components.minecraft:custom_data.cpvp.stats.chestplate
execute if predicate stats:chestitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:legsitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.equipment.legs.components.minecraft:custom_data.cpvp.stats.leggings
execute if predicate stats:legsitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:feetitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.equipment.feet.components.minecraft:custom_data.cpvp.stats.boots
execute if predicate stats:feetitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot0perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot0perkitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot1perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot1perkitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot2perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot2perkitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot3perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot3perkitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot4perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot4perkitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot5perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot5perkitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot6perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot6perkitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot7perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot7perkitem run function stats:statscalc2
data remove storage cpvp:stats $dummy
execute if predicate stats:hot8perkitem run data modify storage cpvp:stats $dummy set from storage cpvp:stats $stats.Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp.stats.perk
execute if predicate stats:hot8perkitem run function stats:statscalc2

#hp/mpの初期値処理
scoreboard players operation @s maxhp += $400 main
scoreboard players operation @s maxmp += $10000 main
scoreboard players operation @s mr += $100 main
#speed処理
execute store result storage cpvp:stats speed float 0.01 run scoreboard players get @s speed
function stats:speed with storage cpvp:stats
data modify storage cpvp:stats speed set value 0
#没
#execute store result score @s statsmath run data get storage cpvp:statsmath $temp.equipment.offhand.components.minecraft:custom_data.cpvp-mr
#scoreboard players operation @s mr += @s statsmath
#execute store result score @s statsmath run data get storage cpvp:statsmath $temp.equipment.offhand.components.minecraft:custom_data.cpvp-mr