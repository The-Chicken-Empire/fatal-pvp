#> system:stats_modifier/check_expiration/remove_loop
#
#
# @within system:stats_modifier/check_expiration
# @within system:stats_modifier/check_expiration/remove_loop

#stats計算
$execute store result score $tmp1 main run data get storage cpvp:stats_modifier players."$(UUID)"[$(index)].expiration
execute if score $tmp1 main matches 0.. if score $tmp1 main <= $stats_modifier.counter main if score $tmp1 main matches 0.. run scoreboard players set $stats_modifier.frag main 1
$execute if score $stats_modifier.frag main matches 1 run data remove storage cpvp:stats_modifier players."$(UUID)"[$(index)]
execute unless score $stats_modifier.frag main matches 1 run scoreboard players add $stats_modifier.index main 1
execute unless score $stats_modifier.frag main matches 1 if score $tmp1 main matches 0.. unless score stats_modifier.minexpiration main matches -2147483648..2147483647 run scoreboard players operation @s stats_modifier.minexpiration = $tmp1 main
execute unless score $stats_modifier.frag main matches 1 if score $tmp1 main matches 0.. run scoreboard players operation @s stats_modifier.minexpiration < $tmp1 main

# ループ用処理
scoreboard players add $stats_modifier.count main 1
execute store result storage cpvp:stats_modifier tmp.index int 1 run scoreboard players get $stats_modifier.index main
scoreboard players reset $stats_modifier.frag main

# ループ
execute if score $stats_modifier.count main < $stats_modifier.loop main run function system:stats_modifier/check_expiration/remove_loop with storage cpvp:stats_modifier tmp