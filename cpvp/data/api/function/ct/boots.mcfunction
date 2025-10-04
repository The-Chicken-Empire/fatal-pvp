data remove storage cpvp: ctcalc 
#statsのCT軽減
scoreboard players set $tmp tmp 100

function effects:system/pick/ {id:39}
scoreboard players set $tmp3 tmp 100
execute store result score $tmp2 tmp run data get storage effect: targeteffect.level
execute if score $tmp2 tmp matches 1.. run scoreboard players operation $tmp2 tmp *= $10 main
scoreboard players operation $tmp3 tmp += $tmp2 tmp

scoreboard players operation $ct main *= $tmp3 tmp
scoreboard players operation $ct main /= $100 main

scoreboard players reset $tmp2 tmp
scoreboard players reset $tmp3 tmp

scoreboard players operation $ct main *= $tmp tmp
scoreboard players operation $tmp tmp += @s ctreduction
scoreboard players operation $ct main /= $tmp tmp
#ほかなんかあれば

#反映
execute store result storage cpvp: ctcalc.cooltime int 1 run scoreboard players get $ct main
#起動
function system:cooltime/general/set_ct_boots with storage cpvp: ctcalc
#削除
scoreboard players reset $ct main
scoreboard players reset $tmp tmp