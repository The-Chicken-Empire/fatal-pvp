#> system:stats_modifier/remove_modifier
#
# @input cpvp:stats_modifier input.remove_modifier.id str 削除対象のmodifierのid
#
# @return cpvp:stats_modifier input.remove_modifier 削除したmodifierのデータ
#
# @within items:**

# returnをリセットしておく
data remove storage cpvp:stats_modifier return

# 引数がない場合
execute unless data storage cpvp:stats_modifier input.remove_modifier.id run tellraw @s {"color": "red", "text": "関数system:stats_modifier/remove_modifierで引数が不足しています"}
execute unless data storage cpvp:stats_modifier input.remove_modifier.id run return fail

# modifierを削除する
data modify storage cpvp:stats_modifier tmp.UUID set from entity @s UUID
data modify storage cpvp:stats_modifier tmp.id set from storage cpvp:stats_modifier input.remove_modifier.id 
function system:stats_modifier/remove_modifier/remove with storage cpvp:stats_modifier tmp

# 削除失敗した場合
execute unless score $stats_modifier.success main matches 1.. run tellraw @s {"color": "red", "text": "関数system:stats_modifier/remove_modifierでmodifierの削除に失敗しました"}

# stats_modifierの計算
execute if score $stats_modifier.success main matches 1.. run function system:stats_modifier/calculate

# statsの再計算
execute if score $stats_modifier.success main matches 1.. run function stats:statscalc

# リセット
data remove storage cpvp:stats_modifier input
data remove storage cpvp:stats_modifier tmp
scoreboard players reset $stats_modifier.success main