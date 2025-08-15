#斬撃に1tick中に1回のみ当たるように
execute if entity @s[tag=weapon4victmp] run return fail
tag @s add weapon4victmp

scoreboard players operation @s attackerdata = @e[tag=weapon4tmp,limit=1] playerdata
#damege種類
tag @s add physicaldamage
tag @s add meleedamage
#damage量
scoreboard players set @s damagetaken 50

#attackercheck
function damage:atkercheck