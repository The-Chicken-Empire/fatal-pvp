#> system:cooltime/general/helper/check_ct_mainhand
#
# アイテム使用時に使う
# CTを確認する
#
# @within system:cooltime/general/check_ct_mainhand

$data modify storage cpvp:system tmp.checkct set from entity @s $(path).components.minecraft:custom_data

