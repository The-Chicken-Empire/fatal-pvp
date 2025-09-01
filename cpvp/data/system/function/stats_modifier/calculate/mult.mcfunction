#> system:stats_modifier/calculate/mult
#
#
# @within system:stats_modifier/calculate/calc_loop

# 最終値への乗算なのでかけておく
$scoreboard players set $tmp1 main $(value)
$scoreboard players operation @s stats_modifier_mult_$(stats) *= $tmp1 main
$scoreboard players operation @s stats_modifier_mult_$(stats) /= $100 main

# mult系のstats_modifierの存在フラグを1にしておく
execute unless score @s stats_modifier.multexist matches -2147483648..2147483647 run scoreboard players set @s stats_modifier.multexist 1

# スコアリセット
scoreboard players reset $tmp1 main