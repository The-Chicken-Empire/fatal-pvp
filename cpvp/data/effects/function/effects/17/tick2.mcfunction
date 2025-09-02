execute store result score @s damagetaken run data get storage effect: tmp2.level
scoreboard players operation @s damagetaken *= @s maxhp
scoreboard players operation @s damagetaken /= $10 main
scoreboard players operation @s damagetaken /= $4 main
execute store result score @s attackerdata run data get storage effect: tmp2.buffer
data modify storage atktrigger: hage set value {itemtype:none,id:none,atktype:wither}
tag @s add specialdamage
function damage:atkercheck