#
scoreboard players operation @s attackerdata = @e[tag=tmp,limit=1] owner
#damege種類
tag @s add magicdamage
tag @s add rangedamage
#damage量
scoreboard players set @s damagetaken 65
#
data modify storage atktrigger: hage set value {itemtype:magic,id:14,atktype:1}
#attackercheck
function damage:atkercheck