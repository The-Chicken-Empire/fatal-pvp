
scoreboard players set @s damagetaken 50
data modify storage atktrigger: hage set value {itemtype:magic,id:36,atktype:2}
tag @s add truedamage
scoreboard players operation @s attackerdata = @e[tag=magic36owner,limit=1] playerdata
function damage:atkercheck

