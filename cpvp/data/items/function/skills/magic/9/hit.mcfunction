execute as @a if score @s playerdata = @e[tag=magic9tmp3,limit=1] owner run tag @s add magic9tmp4

execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.8 30 normal
execute at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 1 2 0

tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation $tmp tmp = @a[tag=magic9tmp4,limit=1] hp
scoreboard players operation $tmp tmp += @a[tag=magic9tmp4,limit=1] absorption
scoreboard players operation $tmp tmp /= $5 main
scoreboard players operation @s damagetaken = $tmp tmp
scoreboard players operation @s attackerdata = @a[tag=magic9tmp4,limit=1] playerdata
tag @a remove magic9tmp4
data modify storage atktrigger: hage set value {itemtype:"magic",id:9,atktype:1}
function damage:atkercheck

kill @e[tag=magic9tmp3]