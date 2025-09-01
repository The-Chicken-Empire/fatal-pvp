#> system:stats_modifier/calculate/calc
#
#
#
# @within system:stats_modifier/calculate


$data modify storage cpvp:stats_modifier tmp.modifiers set from storage cpvp:stats_modifier players."$(UUID)"

execute store result score $stats_modifier.loop main run data get storage cpvp:stats_modifier tmp.modifiers
scoreboard players set $stats_modifier.count main 0

execute if score $stats_modifier.count main < $stats_modifier.loop main run function system:stats_modifier/calculate/calc_loop

scoreboard players reset $stats_modifier.loop main
scoreboard players reset $stats_modifier.count main