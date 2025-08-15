#
scoreboard players operation @s attackerdata = @e[tag=tmp,limit=1] owner
#damege種類
tag @s add magicdamage
tag @s add rangedamage
#damage量
scoreboard players set @s damagetaken 65

#attackercheck
function damage:atkercheck