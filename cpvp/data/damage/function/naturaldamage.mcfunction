tag @e remove atker
tag @e remove victim

#変換
scoreboard players operation @s damagepoint = @s damageresist
scoreboard players reset @s damageresist
#ねじこみperk12
execute if items entity @s hotbar.* *[custom_data~{cpvp:{id:12b,item_type:"perk"}}] run scoreboard players operation @s damagepoint /= $2 main
#ダメージ計算

#attackdata削除
execute store result storage cpvp:tmp tmp byte 1 run scoreboard players get @s playerdata
function system:attackdata/remove with storage cpvp:tmp
data remove storage cpvp:tmp tmp

#damage
function damage:naturaldamage2