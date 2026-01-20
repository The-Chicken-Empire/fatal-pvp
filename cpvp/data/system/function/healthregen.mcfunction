scoreboard players reset $tmphpr tmp
scoreboard players set @s hprtime 0

scoreboard players set $heal main 10
scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:43}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run scoreboard players operation $tmp tmp *= $10 main
scoreboard players operation $heal main += $tmp tmp
scoreboard players set $tmp tmp 0

scoreboard players set $tmp2 tmp 4
function effects:system/pick/ {id:27}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run scoreboard players operation $tmp2 tmp -= $tmp tmp
scoreboard players operation $heal main *= $tmp2 tmp
scoreboard players operation $heal main /= $4 main
scoreboard players reset $tmp2 tmp

tag @s add healer
function api:heal/
scoreboard players reset $tmp tmp