
scoreboard players operation @s damagetaken = @e[tag=perk36tmp,limit=1] counter
data modify storage atktrigger: hage set value {itemtype:perk,id:36,atktype:1}
tag @s add truedamage
scoreboard players operation @s attackerdata = @e[tag=magic36owner,limit=1] playerdata
function damage:atkercheck

