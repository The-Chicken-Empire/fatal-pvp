tag @e remove atker
tag @e remove victim
tag @e remove critical
tag @e remove physicaldamagetmp
tag @e remove magicdamagetmp
tag @e remove meleedamagetmp
tag @e remove rangedamagetmp
tag @e remove specialdamagetmp
tag @e remove nodamagesoundtmp
execute if entity @s[tag=physicaldamage] run tag @s add physicaldamagetmp
execute if entity @s[tag=magicdamage] run tag @s add magicdamagetmp
execute if entity @s[tag=specialdamage] run tag @s add specialdamagetmp
execute if entity @s[tag=meleedamage] run tag @s add meleedamagetmp
execute if entity @s[tag=rangedamage] run tag @s add rangedamagetmp
execute if entity @s[tag=nodamagesound] run tag @s add nodamagesoundtmp
tag @e remove physicaldamage
tag @e remove magicdamage
tag @e remove meleedamage
tag @e remove rangedamage
tag @e remove specialdamage
tag @e remove nodamagesound

tag @s add getatker
execute as @e if score @s playerdata = @e[tag=getatker,limit=1] attackerdata run tag @s add atker
scoreboard players reset @s attackerdata
tag @s remove getatker
tag @s add victim
function damage:damagecalc