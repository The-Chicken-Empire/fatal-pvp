#> system:stats_modifier/calculate/addmult
#
#
# @within system:stats_modifier/calculate/calc_loop

# ベース値に対する乗算なので足すだけ
#$scoreboard players add @s stats_modifier_addmult_$(stats) $(value)
$scoreboard players set $tmpaddmult tmp $(value)
$scoreboard players operation @s stats_modifier_addmult_$(stats) += $tmpaddmult tmp
scoreboard players reset $tmpaddmult tmp

# addmult系のstats_modifierの存在フラグを1にしておく
execute unless score @s stats_modifier.addmultexist matches -2147483648..2147483647 run scoreboard players set @s stats_modifier.addmultexist 1