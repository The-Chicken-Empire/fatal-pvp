#緩衝体力処理
execute if score @s absorption matches 1.. run function damage:absorption
#damegetext
tag @s add naturaldamagetmp
execute if entity @s[tag=!perk39] at @s summon text_display run function damage:damagetext/summontext
tag @s remove naturaldamagetmp
#体力減少
scoreboard players operation @s hp -= @s damagepoint
#reset
scoreboard players set @s damagepoint 0
#この辺りに死亡回避処理とか
execute if score @s hp matches ..0 run function items:triggers/death/check
#damaged
execute unless score @s hp matches ..0 run function items:triggers/damaged/check
#死亡処理
execute if score @s hp matches ..0 run function system:death