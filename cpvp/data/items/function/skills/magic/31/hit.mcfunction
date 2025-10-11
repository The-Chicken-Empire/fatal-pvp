
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @a[tag=magic31tmp,limit=1] playerdata
scoreboard players set @s damagetaken 10
function damage:atkercheck