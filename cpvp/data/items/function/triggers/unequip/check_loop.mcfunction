#> items:triggers/unequip/check_loop
#
# ループでunequipトリガーを実行
#
# @within items:triggers/unequip/check_loop
#

# さらにループを実行
# triggerの文字列リストを{"トリガー名":1bの形に変換}
execute store result score $tmp.loop2 main run data get storage cpvp:stats tmp.unequip[-1].triggers
scoreboard players set $tmp.count2 main 0
execute if score $tmp.loop2 main > $tmp.count2 main run data modify storage cpvp:stats tmp.trigger set from storage cpvp:stats tmp.unequip[-1].triggers[-1]
execute if score $tmp.loop2 main > $tmp.count2 main run function items:triggers/unequip/check_loop2 with storage cpvp:stats tmp

# unequipトリガーがあれば実行
execute if data storage cpvp:stats tmp.triggers.unequip run function items:triggers/unequip/run with storage cpvp:stats tmp.unequip[-1]

# 次のループへ
# ループ処理
scoreboard players add $tmp.count main 1
data remove storage cpvp:stats tmp.unequip[-1]
data remove storage cpvp:stats tmp.triggers
execute if score $tmp.loop main > $tmp.count main run function items:triggers/unequip/check_loop with storage cpvp:stats tmp.unequip[-1]
