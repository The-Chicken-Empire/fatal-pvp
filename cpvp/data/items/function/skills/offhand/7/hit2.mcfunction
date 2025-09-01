tag @s add specialdamage
tag @s add meleedamage
scoreboard players set @s damagetaken 70
scoreboard players operation @s attackerdata = @e[tag=offhand7tmp5,limit=1] owner
data modify storage atktrigger: hage set value {itemtype:"offhand",id:7,atktype:1}
function damage:atkercheck