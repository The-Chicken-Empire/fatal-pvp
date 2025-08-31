tag @s add magicdamage
tag @s add physicaldamage
tag @s add meleedamage
scoreboard players set @s damagetaken 70
scoreboard players operation @s attackerdata = @a[tag=offhand7tmp2,limit=1] playerdata
data modify storage atktrigger: hage set value {itemtype:"offhand",id:7,atktype:1}
function damage:atkercheck