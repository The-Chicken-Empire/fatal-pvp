#tag @a[tag=magic6player] add atker
execute at @s run playsound entity.wither.hurt hostile @s ~ ~ ~ 0.8 0.8 0.8
scoreboard players operation @s attackerdata = @e[tag=magic6,limit=1] owner
scoreboard players set @s damagetaken 100
tag @s add specialdamage
tag @s add rangedamage
function damage:atkercheck