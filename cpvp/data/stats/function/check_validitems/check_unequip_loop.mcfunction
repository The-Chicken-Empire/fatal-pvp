#> stats:check_validitems/check_unequip_loop
#
# 再起処理
#
# stats:check_validitems/check_unequip

# tmp.new[-1]のアイテムがid,itemtype一致でtmp.oldに入っているなら削除
$data remove storage cpvp:stats tmp.old[{id: $(id)b, item_type: "$(item_type)"}]

# ループ処理
scoreboard players add $tmp.count main 1
data remove storage cpvp:stats tmp.new[-1]
execute if score $tmp.loop main > $tmp.count main run function stats:check_validitems/check_unequip_loop with storage cpvp:stats tmp.new[-1]
