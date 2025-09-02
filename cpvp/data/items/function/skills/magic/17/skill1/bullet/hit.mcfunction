tag @e[tag=cp.tmp] add cp.remove
playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 3 1


scoreboard players set @s damagetaken 23
data modify storage atktrigger: hage set value {itemtype:magic,id:17,atktype:1}
tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=cp.tmp,limit=1] owner
function damage:atkercheck

scoreboard players set @s damagetaken 23
data modify storage atktrigger: hage set value {itemtype:magic,id:17,atktype:1}
tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=cp.tmp,limit=1] owner
function damage:atkercheck

scoreboard players set @s damagetaken 23
data modify storage atktrigger: hage set value {itemtype:magic,id:17,atktype:1}
tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=cp.tmp,limit=1] owner
function damage:atkercheck


