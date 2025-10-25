scoreboard players set $heal main 40
tag @s add healer
function api:heal/

execute at @s run playsound entity.blaze.ambient hostile @s ~ ~ ~ 1 1.3 1
execute at @s run particle soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute at @s run particle heart ~ ~1.5 ~ 0.3 0.5 0.3 0.1 2
