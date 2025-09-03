tag @e[tag=atker] remove atker
tag @e[tag=victim] remove victim
tag @e[tag=critical] remove critical
tag @e[tag=physicaldamagetmp] remove physicaldamagetmp
tag @e[tag=magicdamagetmp] remove magicdamagetmp
tag @e[tag=meleedamagetmp] remove meleedamagetmp
tag @e[tag=rangedamagetmp] remove rangedamagetmp
tag @e[tag=specialdamagetmp] remove specialdamagetmp
tag @e[tag=nodamagesoundtmp] remove nodamagesoundtmp
execute if entity @s[tag=physicaldamage] run tag @s add physicaldamagetmp
execute if entity @s[tag=magicdamage] run tag @s add magicdamagetmp
execute if entity @s[tag=specialdamage] run tag @s add specialdamagetmp
execute if entity @s[tag=meleedamage] run tag @s add meleedamagetmp
execute if entity @s[tag=rangedamage] run tag @s add rangedamagetmp
execute if entity @s[tag=nodamagesound] run tag @s add nodamagesoundtmp
tag @s remove physicaldamage
tag @s remove magicdamage
tag @s remove meleedamage
tag @s remove rangedamage
tag @s remove specialdamage
tag @s remove nodamagesound

tag @s add getatker
execute as @e if score @s playerdata = @e[tag=getatker,limit=1] attackerdata run tag @s add atker
scoreboard players reset @s attackerdata
tag @s remove getatker
tag @s add victim
function damage:damagecalc