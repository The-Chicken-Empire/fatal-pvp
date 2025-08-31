tag @e remove atker
tag @e remove victim

#変換
scoreboard players operation @s damagepoint = @s damageresist
scoreboard players reset @s damageresist
#ダメージ計算

#attackdata削除
execute store result storage cpvp:tmp tmp byte 1 run scoreboard players get @s playerdata
function system:attackdata/remove with storage cpvp:tmp
data remove storage cpvp:tmp tmp

#damage
function damage:naturaldamage2