#> stats:check_validitems/check_equip
#
# 新しいアイテムリストから古いアイテムリストに入っていたアイテムを全て削除する
# 
# stats:check_validitems/set_storage


# oldに入ってるアイテム数を取得
execute store result score $tmp.loop main run data get storage cpvp:stats tmp.old

# 1以上ならその数だけループ。cpvp:stats tmp.newから tmp.old[-1]のアイテムを削除する
scoreboard players set $tmp.count main 0
execute if score $tmp.loop main > $tmp.count main run function stats:check_validitems/check_equip_loop with storage cpvp:stats tmp.old[-1]

# リセット
scoreboard players reset $tmp.loop main
scoreboard players reset $tmp.count main
