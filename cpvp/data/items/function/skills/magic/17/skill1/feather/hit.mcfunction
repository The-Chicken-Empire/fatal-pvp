
scoreboard players set @s damagetaken 12
execute if score @s absorption matches 1.. run scoreboard players add @s damagetaken 12
data modify storage atktrigger: hage set value {itemtype:magic,id:17,atktype:1}
tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=cp.tmp,limit=1] owner
function damage:atkercheck

