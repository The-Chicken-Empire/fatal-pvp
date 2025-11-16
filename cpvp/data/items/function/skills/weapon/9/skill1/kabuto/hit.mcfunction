scoreboard players set @s damagetaken 15
data modify storage atktrigger: hage set value {itemtype:weapon,id:9,atktype:1}
tag @s add physicaldamage
tag @s add meleedamage
scoreboard players operation @s attackerdata = @e[tag=cp.tmp,limit=1] owner
function damage:atkercheck

playsound minecraft:entity.generic.hurt master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.breeze.death master @a ^ ^ ^ 1 1

execute at @s positioned ~ ~1 ~ run function items:skills/weapon/9/skill1/kabuto/particle
