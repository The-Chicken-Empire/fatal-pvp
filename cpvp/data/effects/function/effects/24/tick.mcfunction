execute at @s run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.1 2 normal

scoreboard players set $mr main 100
tag @s add healer
function api:mr/