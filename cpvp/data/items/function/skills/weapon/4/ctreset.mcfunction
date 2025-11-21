execute store result storage weapon4ct: slot byte 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:4b,item_type:weapon}}}}].Slot
data modify storage weapon4ct: cooltime set value 0
function system:cooltime/general/set_ct_by_slot with storage weapon4ct:
data remove storage weapon4ct: slot
data remove storage weapon4ct: cooltime
execute at @s run playsound minecraft:item.trident.return neutral @s ~ ~ ~ 1 2
