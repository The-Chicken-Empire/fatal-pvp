#> system:stats_modifier/reset
#
#
#
# @public

# カウンタをリセット
scoreboard players reset $stats_modifier.counter main

# プレイヤのエフェクト終了時刻もリセット

scoreboard players reset @e[type=#main:entity_require_id] stats_modifier.minexpiration

# プレイヤのエフェクト管理用ストレージもリセット
data remove storage cpvp:stats_modifier players
data remove storage cpvp:stats_modifier input
data remove storage cpvp:stats_modifier return

##fixbyx @a->@e
# modifierの値を再計算(データがないので単純にリセットされる)
execute as @e[type=#main:entity_require_id] run function system:stats_modifier/calculate

# statsの再計算
execute as @e[type=#main:entity_require_id] run function stats:statscalc