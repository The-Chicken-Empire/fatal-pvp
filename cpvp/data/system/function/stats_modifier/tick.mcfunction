#> system:stats_modifier/tick
#
#
# @within main:tick

# tick内カウンタは0にしておく
execute if score $stats_modifier.id_counter main matches -2147483648..2147483647 run scoreboard players reset $stats_modifier.id_counter main

# カウンタを進める
scoreboard players add $stats_modifier.counter main 1

# エフェクトの終了時刻をすぎていないかを確認し、過ぎていればエフェクトの消去とstats_modifierの再計算を行う
execute as @a if score @s stats_modifier.minexpiration matches -2147483648..2147483647 run function system:stats_modifier/check_expiration