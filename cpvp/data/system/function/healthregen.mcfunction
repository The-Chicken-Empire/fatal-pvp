scoreboard players set $heal main 10
scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:43}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run scoreboard players operation $tmp tmp *= $10 main
scoreboard players operation $heal main += $tmp tmp
tag @s add healer
function api:heal/
scoreboard players reset $tmp tmp