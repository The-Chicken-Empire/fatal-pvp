data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"perk"}
execute store result storage cpvp: ctcheck.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:49b,item_type:"perk"}}}}].Slot
execute store result score $check main run function items:skills/allcheck
execute unless score $check main matches 1.. run return run scoreboard players reset $check main
scoreboard players reset $check main

tag @s add perk49tmp
scoreboard players operation @s perk49 += @s damagetaken
execute summon marker run function items:skills/perk/49/summonmarker
tag @s remove perk49tmp

scoreboard players operation $tmp tmp = @s maxhp
scoreboard players operation $tmp tmp *= $6 main
scoreboard players operation $tmp tmp /= $10 main
execute if score $tmp tmp <= @s perk49 run function items:skills/perk/49/active
scoreboard players reset $tmp tmp