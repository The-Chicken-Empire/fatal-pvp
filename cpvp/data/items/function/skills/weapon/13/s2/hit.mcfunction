
scoreboard players set @e[tag=w13tmp,limit=1] counter2 0 
scoreboard players set @s damagetaken 20
data modify storage atktrigger: hage set value {itemtype:weapon,id:13,atktype:1}
tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=w13tmp,limit=1] owner
function damage:atkercheck

