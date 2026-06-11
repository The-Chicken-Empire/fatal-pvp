#>system:entity/set_id_duplicated
# 
# system:entity/set_id内で実行。
# 
# @within system:entity/set_id**

# +1
scoreboard players add $init ID 1

# 重複がなくなるまでこの操作を繰り返す。
execute as @e[tag=initialized] if score @s ID = $init ID run function system:entity/set_id_duplicated