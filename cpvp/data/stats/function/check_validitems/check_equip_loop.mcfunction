#> stats:check_validitems/check_equip_loop
#
# 再起処理
#
# stats:check_validitems/check_equip

# tmp.old[-1]のアイテムがid,itemtype一致でtmp.newに入っているなら削除
$data remove storage cpvp:stats tmp.new[{id: $(id)b, item_type: "$(item_type)"}]

# ループ処理
scoreboard players add $tmp.count main 1
data remove storage cpvp:stats tmp.old[-1]
execute if score $tmp.loop main > $tmp.count main run function stats:check_validitems/check_equip_loop with storage cpvp:stats tmp.old[-1]
