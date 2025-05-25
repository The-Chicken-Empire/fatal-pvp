#> system:cooltime/general/helper/get_ct_by_slot
# アイテム使用時に使う
# CTを確認する
#
# @within system:cooltime/general/get_ct_by_slot

$data modify storage cpvp:system tmp.checkct set from entity @s $(path).components.minecraft:custom_data

