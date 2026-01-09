execute unless score $phase main matches 3 unless score $gametimer main matches 1.. run return fail
execute unless entity @s[tag=alive] run return fail

scoreboard players operation $gamestopwatch main += $time main
scoreboard players operation $gametimer main -= $time main
execute if score $gametimer main matches ..0 run scoreboard players set $gametimer main 1
scoreboard players operation $daytimeset main += $daytime main
scoreboard players operation $daytimeset main += $time main
execute store result storage cpvp:time timeset int 1 run scoreboard players get $daytimeset main
function api:time/timeset with storage cpvp:time
scoreboard players reset $time main