execute store result score @s damagetaken run data get storage effect: tmp2.level 10
execute store result score @s attackerdata run data get storage effect: tmp2.buffer
data modify storage atktrigger: hage set value {itemtype:none,id:none,atktype:poison}
tag @s add specialdamage
function damage:atkercheck