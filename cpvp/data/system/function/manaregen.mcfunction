#最大mp1/200を回復
scoreboard players operation $dummy mr = @s maxmp
scoreboard players operation $dummy mr /= $200 main
scoreboard players operation @s mp += $dummy mr
#mpが最大値を超えないようにする
execute if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp
#mpが0未満にならないようにする 
execute if score @s mp matches ..0 run scoreboard players set @s mp 0
#reset
scoreboard players reset $dummy mr