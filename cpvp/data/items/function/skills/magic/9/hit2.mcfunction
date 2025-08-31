execute at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 1 1.5 0

execute at @s run particle trial_spawner_detection ~ ~ ~ 0 0 0 0.8 20 normal
execute at @s run function items:skills/magic/9/chain
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation $tmp tmp = @a[tag=magic9tmp7,limit=1] hp
scoreboard players operation $tmp tmp += @a[tag=magic9tmp7,limit=1] absorption
scoreboard players operation $tmp tmp /= $6 main
scoreboard players operation @s damagetaken = $tmp tmp
scoreboard players operation @s attackerdata = @a[tag=magic9tmp7,limit=1] playerdata

data modify storage atktrigger: hage set value {itemtype:"magic",id:9,atktype:2}
function damage:atkercheck