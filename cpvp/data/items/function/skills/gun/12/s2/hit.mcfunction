scoreboard players remove @s gun12 1

scoreboard players set @s damagetaken 4
data modify storage atktrigger: hage set value {itemtype:gun,id:12,atktype:2}
tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @a[tag=gun12owner] playerdata
function damage:atkercheck

execute if score @s gun12 matches 1.. at @s run function items:skills/gun/12/s2/hit








