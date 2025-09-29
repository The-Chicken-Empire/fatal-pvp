#
scoreboard players operation @s attackerdata = @e[tag=m14bullet_a,limit=1] owner
#damege種類
tag @s add magicdamage
tag @s add rangedamage
#damage量
scoreboard players set @s damagetaken 10
#
playsound entity.phantom.bite hostile @a ~ ~ ~ 0.4 1
kill @e[tag=m14bullet_a]
#
data modify storage atktrigger: hage set value {itemtype:magic,id:14,atktype:2}
#attackercheck
function damage:atkercheck