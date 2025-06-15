#体力減少
scoreboard players operation @s hp -= @s damage
#reset
scoreboard players set @s damage 0
#この辺りに死亡回避処理とか
#死亡処理
execute if score @s hp matches ..0 run function system:death