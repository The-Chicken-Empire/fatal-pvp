#最大mp1/200を回復
#scoreboard players set $dummy mr 100
scoreboard players operation $dummy mr = @s mr
scoreboard players set $tmp tmp 0
scoreboard players set $tmp2 tmp 4
function effects:system/pick/ {id:27}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run scoreboard players operation $tmp2 tmp -= $tmp tmp
scoreboard players operation $dummy mr *= $tmp2 tmp
scoreboard players operation $dummy mr /= $4 main
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp

scoreboard players operation @s mp += $dummy mr
#mpが最大値を超えないようにする
execute if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp
#mpが0未満にならないようにする 
execute if score @s mp matches ..0 run scoreboard players set @s mp 0
#reset
scoreboard players reset $dummy mr