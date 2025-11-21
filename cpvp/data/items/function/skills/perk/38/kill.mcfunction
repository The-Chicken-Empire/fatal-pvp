scoreboard players set $eng main 10
function api:charge/
execute at @s run playsound block.respawn_anchor.charge block @s ~ ~ ~ 1 2 1
execute at @s run particle electric_spark ~ ~1 ~ 0.3 0.6 0.3 0.1 5 normal