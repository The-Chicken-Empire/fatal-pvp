scoreboard players operation $heal main = @e[tag=victim,limit=1] damagetaken
scoreboard players operation $heal main /= $5 main

tag @a[tag=cp18tmp] add healer
function api:heal/

execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 1
execute at @s run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 2