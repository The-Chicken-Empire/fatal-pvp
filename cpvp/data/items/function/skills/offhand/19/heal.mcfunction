scoreboard players reset @s offhand19

tag @a[tag=offhand19tmp,limit=1] add healer
scoreboard players set $heal main 10
function api:heal/
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 1
execute at @s run particle composter ~ ~2 ~ 0.2 0 0.2 0 4