
scoreboard players set @s damagetaken 60
data modify storage atktrigger: hage set value {itemtype:magic,id:36,atktype:1}
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=magic36owner,limit=1] playerdata
function damage:atkercheck

