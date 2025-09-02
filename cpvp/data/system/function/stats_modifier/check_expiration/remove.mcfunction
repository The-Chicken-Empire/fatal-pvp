#> system:stats_modifier/check_expiration/remove
#
#
#
# @within system:stats_modifier/check_expiration

scoreboard players reset @s stats_modifier.minexpiration

$execute store result score $stats_modifier.loop main run data get storage cpvp:stats_modifier players."$(UUID)"
scoreboard players set $stats_modifier.count main 0
scoreboard players set $stats_modifier.index main 0
execute store result storage cpvp:stats_modifier tmp.index int 1 run scoreboard players get $stats_modifier.index main

execute if score $stats_modifier.count main < $stats_modifier.loop main run function system:stats_modifier/check_expiration/remove_loop with storage cpvp:stats_modifier tmp

# ステータスの再計算
function system:stats_modifier/calculate
function stats:statscalc

# リセット
scoreboard players reset $stats_modifier.loop main
scoreboard players reset $stats_modifier.count main
scoreboard players reset $stats_modifier.index main
scoreboard players reset $tmp1 main
