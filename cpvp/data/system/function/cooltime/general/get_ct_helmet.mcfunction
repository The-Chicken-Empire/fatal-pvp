#> system:cooltime/general/get_ct_helmet
#
# オフハンドアイテムのCTを取得する
# CTを確認する
#
# @within items:**
# @within system:**

# オフハンドアイテムのデータをストレージに入れとく
data modify storage cpvp:system tmp.checkct set from entity @s equipment.head.components.minecraft:custom_data

# データがないなら常に0をリターン
execute unless data storage cpvp:system tmp.checkct.cpvp.cooltime run return 0

# 残りクールタイムの計算 (前回使用時の時間 + CT) - 現在のタイマー時間 = 残りCT時間
execute store result score $tmp1 main run data get storage cpvp:system tmp.checkct.cpvp.cooltime.time_use
execute store result score $tmp2 main run data get storage cpvp:system tmp.checkct.cpvp.cooltime.cooltime

scoreboard players operation $tmp1 main += $tmp2 main

# 1000000000を超えていた場合は0に戻るので剰余を取る
scoreboard players operation $tmp1 main %= $1000000000 main

scoreboard players operation $tmp1 main -= $ct_timer main

# 0以上に設定
scoreboard players operation $tmp1 main > $0 main

# リセット
data remove storage cpvp:system tmp

# 値を返す
return run scoreboard players get $tmp1 main

