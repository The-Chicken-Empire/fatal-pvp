#tag @a[tag=magic6player] add atker
execute at @s run playsound entity.wither.hurt hostile @s ~ ~ ~ 0.8 0.8 0.8
scoreboard players operation @s attackerdata = @a[tag=magic6player,limit=1] playerdata
scoreboard players set @s damagetaken 60
tag @s add magicdamage
tag @s add rangedamage
function damage:atkercheck