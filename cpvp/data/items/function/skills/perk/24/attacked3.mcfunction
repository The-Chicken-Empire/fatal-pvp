data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"perk"}
execute store result storage cpvp: ctcheck.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:24b,item_type:"perk"}}}}].Slot
execute store result score $check main run function items:skills/allcheck
execute unless score $check main matches 1.. run return run scoreboard players reset $check main
scoreboard players reset $check main

execute if entity @s[tag=magicdamagetmp] unless score @s perk24magic matches 30.. run data modify storage cpvp:stats_modifier input.add_modifier set value {id:"perk24",stats:"magicdmg", type: "add", duration:-1, value:1}
execute if entity @s[tag=magicdamagetmp] unless score @s perk24magic matches 30.. run scoreboard players add @s perk24magic 1
execute if entity @s[tag=magicdamagetmp] unless score @s perk24magic matches 30.. run function system:stats_modifier/add_modifier

execute if entity @s[tag=physicaldamagetmp] unless score @s perk24physical matches 30.. run data modify storage cpvp:stats_modifier input.add_modifier set value {id:"perk24",stats:"physicaldmg", type: "add", duration:-1, value:1}
execute if entity @s[tag=magicdamagetmp] unless score @s perk24physical matches 30.. run scoreboard players add @s perk24physical 1
execute if entity @s[tag=physicaldamagetmp] unless score @s perk24physical matches 30.. run function system:stats_modifier/add_modifier

execute if entity @s[tag=meleedamagetmp] unless score @s perk24melee matches 30.. run data modify storage cpvp:stats_modifier input.add_modifier set value {id:"perk24",stats:"meleedmg", type: "add", duration:-1, value:1}
execute if entity @s[tag=magicdamagetmp] unless score @s perk24melee matches 30.. run scoreboard players add @s perk24melee 1
execute if entity @s[tag=meleedamagetmp] unless score @s perk24melee matches 30.. run function system:stats_modifier/add_modifier

execute if entity @s[tag=rangedamagetmp] unless score @s perk24range matches 30.. run data modify storage cpvp:stats_modifier input.add_modifier set value {id:"perk24",stats:"rangedmg", type: "add", duration:-1, value:1}
execute if entity @s[tag=magicdamagetmp] unless score @s perk24range matches 30.. run scoreboard players add @s perk24range 1
execute if entity @s[tag=rangedamagetmp] unless score @s perk24range matches 30.. run function system:stats_modifier/add_modifier

scoreboard players set $ct main 40
execute store result storage cpvp: ctcalc.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:24b,item_type:"perk"}}}}].Slot
function api:ct/perk
