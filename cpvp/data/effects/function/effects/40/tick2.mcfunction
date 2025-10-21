execute store result score @s damagetaken run data get storage effect: tmp2.level
scoreboard players operation @s damagetaken *= $10 main
execute if items entity @s armor.legs *[custom_data~{cpvp:{item_type:leggings,id:11b}}] run scoreboard players operation @s damagetaken /= $2 main

execute store result score @s attackerdata run data get storage effect: tmp2.buffer
data modify storage atktrigger: hage set value {itemtype:none,id:none,atktype:burn}
execute at @s run particle flame ~ ~1 ~ 0.5 0.7 0.5 0.02 15

tag @s add specialdamage
function damage:atkercheck
execute at @s run playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 1 0