#> system:mp/check
#
# 使用例です
#
# @private

# mp消費10
execute store result score $mpcheck main run function system:mp/check {mpcost : 10}
execute if score $mpcheck main matches 1 run function system:mp/consume
execute unless score $mpcheck main matches 1 run say MPが足りない!

# 現在mp表示
tellraw @a {"score":{"name":"@s","objective":"mp"}}

# リセット
scoreboard players reset $mpcheck main