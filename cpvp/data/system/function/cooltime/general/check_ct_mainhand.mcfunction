#> system:cooltime/general/check_ct_mainhand
#
# メインハンドアイテム使用時に使う
# CTを確認する
#
# @within item:**
# @within system:**

# メインハンドアイテムのデータをストレージに入れとく
data modify storage cpvp:system tmp.checkct set from entity @s SelectedItem.components.minecraft:custom_data

# データがないなら常に成功
execute unless data storage cpvp:system tmp.checkct.cpvp.cooltime run return 1

# クールタイムが終わっているかチェックします 前回の使用時間 + CT <= 現在のタイマー時間を判定
execute store result score $tmp1 main run data get storage cpvp:system tmp.checkct.cpvp.cooltime.time_use
execute store result score $tmp2 main run data get storage cpvp:system tmp.checkct.cpvp.cooltime.cooltime

scoreboard players operation $tmp1 main += $tmp2 main

# 1000000000を超えていた場合は0に戻るので剰余を取る
scoreboard players operation $tmp1 main %= $1000000000 main

# リセット
data remove storage cpvp:system tmp

# 条件成立で1、不成立で2を返す
return run execute if score $tmp1 main <= $ct_timer main

