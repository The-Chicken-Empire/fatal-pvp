execute if score @e[tag=victim,limit=1] absorption matches 1.. run scoreboard players operation @e[tag=victim,limit=1] damagetaken *= $2 main
scoreboard players set $mr main 100
tag @s add healer
function api:mr/