#> items:triggers/unequip/check_loop2
#
# ループでunequipトリガーを実行
#
# @within items:triggers/unequip/check_loop

$data modify storage cpvp:stats tmp.triggers.$(trigger) set value 1b

# さらにループを実行
# triggerの文字列リストを{"トリガー名":1bの形に変換}
scoreboard players add $tmp.count2 main 1
data remove storage cpvp:stats tmp.unequip[-1].triggers[-1]
execute if score $tmp.loop2 main > $tmp.count2 main run data modify storage cpvp:stats tmp.trigger set from storage cpvp:stats tmp.unequip[-1].triggers[-1]
execute if score $tmp.loop2 main > $tmp.count2 main run function items:triggers/unequip/check_loop2 with storage cpvp:stats tmp
