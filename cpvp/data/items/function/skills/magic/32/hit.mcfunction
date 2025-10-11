tag @s add meleedamage
tag @s add magicdamage
scoreboard players set @s damagetaken 90
scoreboard players operation @s attackerdata = @a[tag=magic32tmp,limit=1] playerdata
#火傷処理を後から追加
function damage:atkercheck
