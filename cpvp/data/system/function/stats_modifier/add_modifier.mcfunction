#> system:stats_modifier/add_modifier
# 
# @input cpvp:stats_modifier input.add_modifier.id str "識別用ID" (optional)
# @input cpvp:stats_modifier input.add_modifier.stats str "対象ステータス" 
# @input cpvp:stats_modifier input.add_modifier.type str <"add"/"addmult"/"mult"> <加算/ベース値に対する倍率/最終値に対する倍率>
# @input cpvp:stats_modifier input.add_modifier.duration int 効果時間(tick)
# @input cpvp:stats_modifier input.add_modifier.value int 値 addならそのまま数値、addmult,multは%
#
# @return cpvp:stats_modifier return.add_modifier 追加したmodifier情報。失敗ならデータなし
#         例 入力: {stats: "speed", type: "add", duration: 200, value: "20"}
#            出力: {id:"1000_1", stats: "speed", type: "add", expiration: 1200, value: "20"}
#
# @within items:**

# 返り値をリセットしておく
data remove storage cpvp:stats_modifier return.add_modifier

# 引数が足りているかチェック
scoreboard players set $stats_modifier.success main 1
execute unless data storage cpvp:stats_modifier input.add_modifier.stats run scoreboard players set $stats_modifier.success main 0
execute unless data storage cpvp:stats_modifier input.add_modifier.type run scoreboard players set $stats_modifier.success main 0
execute unless data storage cpvp:stats_modifier input.add_modifier.duration run scoreboard players set $stats_modifier.success main 0
execute unless data storage cpvp:stats_modifier input.add_modifier.value run scoreboard players set $stats_modifier.success main 0
# 足りていなければエラーメッセージを出力して終了
execute if score $stats_modifier.success main matches 0 run tellraw @s {"color": "red", "text": "関数system:stats_modifier/add_modifierで引数が不足しています"}
execute if score $stats_modifier.success main matches 0 run return run scoreboard players reset $stats_modifier.success main
scoreboard players reset $stats_modifier.success main

# modifierのid生成
execute unless data storage cpvp:stats_modifier input.add_modifier.id run function system:stats_modifier/add_modifier/generate_id
execute if data storage cpvp:stats_modifier input.add_modifier.id run data modify storage cpvp:system tmp.data.id set from storage cpvp:stats_modifier input.add_modifier.id

# 終了時刻を計算し、プレイヤのmin_expirationに設定
scoreboard players operation $tmp1 main = $stats_modifier.counter main
execute store result score $tmp2 main run data get storage cpvp:stats_modifier input.add_modifier.duration
scoreboard players operation $tmp1 main += $tmp2 main
execute if score $tmp2 main matches ..-1 run data modify storage cpvp:stats_modifier tmp.data.expiration set value -1
execute unless score $tmp2 main matches ..-1 unless score @s stats_modifier.minexpiration matches -2147483648..2147483647 run scoreboard players operation @s stats_modifier.minexpiration = $tmp1 main
execute unless score $tmp2 main matches ..-1 if score @s stats_modifier.minexpiration matches -2147483648..2147483647 run scoreboard players operation @s stats_modifier.minexpiration < $tmp1 main
execute unless score $tmp2 main matches ..-1 store result storage cpvp:stats_modifier tmp.data.expiration int 1 run scoreboard players get $tmp1 main

# stats_modifierを追加する
data modify storage cpvp:stats_modifier tmp.data.stats set from storage cpvp:stats_modifier input.add_modifier.stats
data modify storage cpvp:stats_modifier tmp.data.type set from storage cpvp:stats_modifier input.add_modifier.type
data modify storage cpvp:stats_modifier tmp.data.value set from storage cpvp:stats_modifier input.add_modifier.value
data modify storage cpvp:stats_modifier tmp.UUID set from entity @s UUID
function system:stats_modifier/add_modifier/set_effect with storage cpvp:stats_modifier tmp

# 返り値の設定
data modify storage cpvp:stats_modifier return.add_modifier set from storage cpvp:stats_modifier tmp.data

# stats_modifierの計算後ステータス値に追加する
function system:stats_modifier/add_modifier/add_stats with storage cpvp:stats_modifier tmp.data

# statsの再計算
function stats:statscalc

# リセット処理
data remove storage cpvp:stats_modifier input.add_modifier
data remove storage cpvp:stats_modifier tmp
scoreboard players reset $tmp1 main
scoreboard players reset $tmp2 main