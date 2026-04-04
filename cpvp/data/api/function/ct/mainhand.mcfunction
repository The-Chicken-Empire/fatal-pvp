data remove storage cpvp: ctcalc 
#statsのCT軽減
scoreboard players set $tmp tmp 100

scoreboard players operation $ct main *= $tmp tmp
scoreboard players operation $tmp tmp += @s ctreduction
scoreboard players operation $ct main /= $tmp tmp
##ほかなんかあれば
#magic62clock ct半減
execute if entity @e[tag=magic62clock,distance=..25] run function items:skills/magic/62/ctred


#反映
execute store result storage cpvp: ctcalc.cooltime int 1 run scoreboard players get $ct main
#起動
function system:cooltime/general/set_ct_mainhand with storage cpvp: ctcalc
#削除
scoreboard players reset $ct main
scoreboard players reset $tmp tmp