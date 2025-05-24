#> system:cooltime/general/helper/set_ct_mainhand
#
# アイテム使用時に使う
# CTを設定する
# @input int cooltime クールタイム
# @input string slot itemコマンドで指定できるもの
#
# @within system:cooltime/general/set_ct_mainhand

$item modify entity @s $(slot) system:set_cooltime
