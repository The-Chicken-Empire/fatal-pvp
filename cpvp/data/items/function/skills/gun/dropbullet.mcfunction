#銃種
data modify storage tmp dropbullet set from entity @s equipment.offhand.components."minecraft:custom_data".cpvp.id
execute if data storage tmp dropbullet{gun:1b} run function items:skills/gun/1/dropbullet
#reset
data remove storage tmp dropbullet