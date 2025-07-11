#> system:cooltime/general/set_ct_boots
#
# オフハンドアイテム使用時に使う
# CTを設定する
# @input int cooltime クールタイム
#
# @within items:**
# @within system:**

#実行時間とCTをストレージに取得
execute store result storage cpvp:system tmp.cooltime.time_use int 1 run scoreboard players get $ct_timer main
$data modify storage cpvp:system tmp.cooltime.cooltime set value $(cooltime)

# ストレージの内容をアイテムに代入してクールタイムと使用時間を設定
item modify entity @s armor.feet system:set_cooltime

#リセット
data remove storage cpvp:system tmp

# リターン
return 1