#体力減少
scoreboard players operation @s hp -= @s damage
#reset
scoreboard players reset @s damage
#この辺りに死亡回避処理とか
#体力反映
function sth:sth
#死亡処理
execute if score @s hp <= $0 main run function system:death