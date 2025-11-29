#> system:stats_modifier/calculate/add
#
#
# @within system:stats_modifier/calculate/calc_loop

#足すだけ
$scoreboard players set $tmpstatsmodifier tmp $(value)
$scoreboard players operation @s stats_modifier_add_$(stats) += $tmpstatsmodifier tmp
scoreboard players reset $tmpstatsmodifier tmp
#$scoreboard players add @s stats_modifier_add_$(stats) $(value)

# add系のstats_modifierの存在フラグを1にしておく
execute unless score @s stats_modifier.addexist matches -2147483648..2147483647 run scoreboard players set @s stats_modifier.addexist 1