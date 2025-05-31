#開始
title @a title {"color":"white","text":"転送中..."}
function system:phase/phase1/teamscoreset
execute if score $teammode main matches 1 run tp @a[team=red,tag=player] @e[nbt={data:{cpvp:redmarker}},limit=1]
execute if score $teammode main matches 1 run tp @a[team=blue,tag=player] @e[nbt={data:{cpvp:bluemarker}},limit=1]
execute if score $teammode main matches 1 run tp @a[team=green,tag=player] @e[nbt={data:{cpvp:greenmarker}},limit=1]
execute if score $teammode main matches 1 run tp @a[team=yellow,tag=player] @e[nbt={data:{cpvp:yellowmarker}},limit=1]
execute if score $teammode main matches 0 positioned over motion_blocking_no_leaves run spreadplayers ~ ~ 1 5 true @a
execute as @a[tag=player] run tag @s add alive
scoreboard objectives setdisplay sidebar alives
bossbar set minecraft:timer visible false
scoreboard players set $timer main 300
scoreboard players set $phase main 2