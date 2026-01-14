scoreboard players reset $tmp tmp
execute store result score $tmp tmp run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{item_type:"gun",id:5b}}}}].Slot
scoreboard players remove $tmp tmp 1
execute unless score $tmp tmp matches 0.. run return run scoreboard players reset $tmp tmp

execute store result storage cpvp:range5 slot int 1 run scoreboard players get $tmp tmp
scoreboard players reset $tmp tmp
execute store result score $ct tmp run function system:cooltime/general/get_ct_by_slot with storage cpvp:range5
scoreboard players remove $ct tmp 120
execute store result storage cpvp:range5 cooltime int 1 run scoreboard players get $ct tmp
function system:cooltime/general/set_ct_by_slot with storage cpvp:range5
scoreboard players reset $ct tmp
scoreboard players reset $tmp tmp

execute at @s run playsound block.vault.insert_item_fail block @s ~ ~ ~ 1 0.4 1
execute at @s run playsound block.vault.insert_item_fail block @s ~ ~ ~ 1 0.4 1
execute at @s run playsound block.vault.insert_item_fail block @s ~ ~ ~ 1 0.4 1