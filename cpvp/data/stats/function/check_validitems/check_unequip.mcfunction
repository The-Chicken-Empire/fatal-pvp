#> stats:check_validitems/check_unequip
#
# 古いアイテムリストから新しいアイテムリストに入っていたアイテムを全て削除する
# 
# stats:check_validitems/set_storage


# newに入ってるアイテム数を取得
execute store result score $tmp.loop main run data get storage cpvp:stats tmp.new

# 1以上ならその数だけループ。cpvp:stats tmp.oldから tmp.new[-1]のアイテムを削除する
scoreboard players set $tmp.count main 0
execute if score $tmp.loop main > $tmp.count main run function stats:check_validitems/check_unequip_loop with storage cpvp:stats tmp.new[-1]

# リセット
scoreboard players reset $tmp.loop main
scoreboard players reset $tmp.count main
