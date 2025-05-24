#> system:cooltime/general/set_ct_mainhand
#
# アイテム使用時に使う
# CTを設定する
# @input int cooltime クールタイム
# @input int slot スロット番号
#
# @within items:**
# @within system:**

#実行時間とCTをストレージに取得
execute store result storage cpvp:system tmp.cooltime.time_use int 1 run scoreboard players get $ct_timer main
$data modify storage cpvp:system tmp.cooltime.cooltime set value $(cooltime)

# スロット番号をitemコマンドで使える形に変換
$data modify storage cpvp:system tmp.slot set from storage cpvp:system slotnum_to_itemslot.$(slot)

function system:cooltime/general/helper/set_ct_by_slot with storage cpvp:system tmp

#リセット
data remove storage cpvp:system tmp

# リターン
return 1