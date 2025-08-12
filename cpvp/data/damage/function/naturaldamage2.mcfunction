#緩衝体力処理
execute if score @s absorption matches 1.. run function damage:absorption
#体力減少
scoreboard players operation @s hp -= @s damage
#reset
scoreboard players set @s damage 0
#この辺りに死亡回避処理とか
execute if score @s hp matches ..0 run function items:triggers/death/check
#damaged
execute unless score @s hp matches ..0 run function items:triggers/damaged/check
#死亡処理
execute if score @s hp matches ..0 run function system:death