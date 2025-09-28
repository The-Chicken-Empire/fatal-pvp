

data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"perk"}
execute store result storage cpvp: ctcheck.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:30b,item_type:"perk"}}}}].Slot
execute store result score $check main run function items:skills/allcheck
execute unless score $check main matches 1.. run return run scoreboard players reset $check main





execute if entity @s[tag=!cp17activated] at @s run function items:skills/perk/30/s2/heal
execute if entity @s[tag=cp17activated] at @s run function items:skills/perk/30/s2/dmg







scoreboard players set $ct main 100
execute store result storage cpvp: ctcalc.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:30b,item_type:"perk"}}}}].Slot
function api:ct/perk
