#> system:stats_modifier/check_expiration
#
#
#
# @within system:stats_modifier/tick

# expireしていれば処理
execute if score $stats_modifier.counter main >= @s stats_modifier.minexpiration run data modify storage cpvp:stats_modifier tmp.UUID set from entity @s UUID
execute if score $stats_modifier.counter main >= @s stats_modifier.minexpiration run function system:stats_modifier/check_expiration/remove with storage cpvp:stats_modifier tmp

# リセット
data remove storage cpvp:stats_modifier tmp