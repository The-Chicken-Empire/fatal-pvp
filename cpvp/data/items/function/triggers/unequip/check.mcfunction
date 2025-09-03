#> items:triggers/unequip/check
#
# ループでunequipトリガーを実行
#
# @within stats:check_validitems/check_triggers


# ループで実行
execute store result score $tmp.loop main run data get storage cpvp:stats tmp.unequip
scoreboard players set $tmp.count main 0
execute if score $tmp.loop main > $tmp.count main run function items:triggers/unequip/check_loop

# リセット
scoreboard players reset $tmp.loop main
scoreboard players reset $tmp.count main
data remove storage cpvp:stats tmp
