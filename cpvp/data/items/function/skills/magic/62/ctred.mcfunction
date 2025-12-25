tag @s add m62ctredtmp
scoreboard players set $m62ctredtmp tmp 0
execute as @e[tag=magic62clock,distance=..25] if score @s teamscore = @a[tag=m62ctredtmp,limit=1] teamscore run scoreboard players set $m62ctredtmp tmp 1
execute if score $m62ctredtmp tmp matches 0 run tag @s remove m62ctredtmp
execute if score $m62ctredtmp tmp matches 0 run return run scoreboard players reset $m62ctredtmp tmp

scoreboard players operation $ct main /= $2 main
execute at @s run playsound block.trial_spawner.spawn_item block @s ~ ~ ~ 1 1.3 1
scoreboard players reset $m62ctredtmp tmp
tag @s remove m62ctredtmp