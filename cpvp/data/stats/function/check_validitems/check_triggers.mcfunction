#> stats:check_validitems/check_triggers
#
# プレイヤごとの個別ストレージに有効化されたアイテムのデータを格納する
# 同時に新しく装備したアイテムと装備解除したアイテムのチェックを行い、equipとunequipのトリガーを起動する
#
# stats:check_validitems/

# 前回のvaliditemsを取得し、新しいものに更新
$data modify storage cpvp:stats tmp.oldvaliditems set from storage cpvp:stats players."$(UUID)".validitems
$data modify storage cpvp:stats players."$(UUID)".validitems set from storage cpvp:stats $validitems


# 新しく装備したものを取得する
# 作業用にストレージをコピー
data modify storage cpvp:stats tmp.old set from storage cpvp:stats tmp.oldvaliditems
data modify storage cpvp:stats tmp.new set from storage cpvp:stats $validitems
# 新しい装備から古い装備に入っていたものを全て引いて残ったものが新しく装備したものになる
function stats:check_validitems/check_equip
# 装備したものを個別ストレージに格納
$data modify storage cpvp:stats players."$(UUID)".equipitems set from storage cpvp:stats tmp.new

# 装備解除したものを取得する
# 作業用にストレージをコピー
data modify storage cpvp:stats tmp.old set from storage cpvp:stats tmp.oldvaliditems
data modify storage cpvp:stats tmp.new set from storage cpvp:stats $validitems
# 古い装備から新しい装備に入っていたものを全て引いて残ったものが装備解除したものになる
function stats:check_validitems/check_unequip
# 装備解除したものを個別ストレージに格納
$data modify storage cpvp:stats players."$(UUID)".unequipitems set from storage cpvp:stats tmp.old

# equipトリガーとunequipトリガーを実行
$data modify storage cpvp:stats tmp.equip set from storage cpvp:stats players."$(UUID)".equipitems
function items:triggers/equip/check
$data modify storage cpvp:stats tmp.unequip set from storage cpvp:stats players."$(UUID)".unequipitems
function items:triggers/unequip/check