scoreboard players set @s damagetaken 150
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=perk11tmp2,limit=1] owner
data modify storage atktrigger: hage set value {itemtype:"perk",id:11,atktype:1}
function damage:atkercheck
