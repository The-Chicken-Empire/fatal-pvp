data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"offhand"}
execute store result storage cpvp: ctcheck.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:20b,item_type:"perk"}}}}].Slot
execute store result score $check main run function items:skills/allcheck
execute unless score $check main matches 1.. run return run scoreboard players reset $check main
scoreboard players reset $check main

execute store result score $tmp random run random value 1..100
execute if score $tmp random matches ..5 run function items:skills/perk/20/active
scoreboard players reset $tmp random