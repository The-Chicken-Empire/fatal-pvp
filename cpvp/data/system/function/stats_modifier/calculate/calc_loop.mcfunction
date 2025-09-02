#> system:stats_modifier/calculate/calc_loop
#
#
#
# @within system:stats_modifier/calculate/calc
# @within system:stats_modifier/calculate/calc_loop

#stats計算
data modify storage cpvp:stats_modifier tmp.types set value {add:"add", addmult:"addmult", mult: "mult"}
execute store success score $stats_modifier.success main run data modify storage cpvp:stats_modifier tmp.types.add set from storage cpvp:stats_modifier tmp.modifiers[0].type
execute if score $stats_modifier.success main matches 0 run function system:stats_modifier/calculate/add with storage cpvp:stats_modifier tmp.modifiers[0]
execute store success score $stats_modifier.success main run data modify storage cpvp:stats_modifier tmp.types.addmult set from storage cpvp:stats_modifier tmp.modifiers[0].type
execute if score $stats_modifier.success main matches 0 run function system:stats_modifier/calculate/addmult with storage cpvp:stats_modifier tmp.modifiers[0]
execute store success score $stats_modifier.success main run data modify storage cpvp:stats_modifier tmp.types.mult set from storage cpvp:stats_modifier tmp.modifiers[0].type
execute if score $stats_modifier.success main matches 0 run function system:stats_modifier/calculate/mult with storage cpvp:stats_modifier tmp.modifiers[0]

# リセット
scoreboard players reset $stats_modifier.success main

# ループ処理
scoreboard players add $stats_modifier.count main 1
data remove storage cpvp:stats_modifier tmp.modifiers[0]
execute if score $stats_modifier.count main < $stats_modifier.loop main run function system:stats_modifier/calculate/calc_loop

