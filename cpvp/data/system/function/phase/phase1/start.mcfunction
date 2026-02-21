#開始
title @a title {"color":"white","text":"転送中..."}
function system:phase/phase1/teamscoreset
gamemode adventure @a[tag=playing]
execute if score $teammode main matches 1 run tp @a[team=red,tag=player] @e[tag=redmarker,limit=1]
execute if score $teammode main matches 1 run tp @a[team=blue,tag=player] @e[tag=bluemarker,limit=1]
execute if score $teammode main matches 1 run tp @a[team=green,tag=player] @e[tag=greenmarker,limit=1]
execute if score $teammode main matches 1 run tp @a[team=yellow,tag=player] @e[tag=yellowmarker,limit=1]
execute if score $teammode main matches 0 positioned over motion_blocking_no_leaves run spreadplayers ~ ~ 1 5 true @a[tag=player]
execute as @a[tag=player] run tag @s add aliving
execute if score $teammode main matches 1 as @a[team=!red,team=!blue,team=!green,team=!yellow] run tag @s remove alive
scoreboard objectives setdisplay sidebar alives
bossbar set minecraft:timer visible false
scoreboard players set $bstarttimer main 300
scoreboard players set $phase main 2