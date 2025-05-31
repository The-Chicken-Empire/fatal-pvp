#damege種類
tag @s add victim
tag @s add magicdamage
tag @s add rangedamage
#damage量量
scoreboard players set @s damagetaken 140
#計算
function damage:damagecalc
#終了
tag @a remove atker
tag @a remove victim