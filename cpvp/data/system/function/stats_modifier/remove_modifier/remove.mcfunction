#> system:stats_modifier/remove_modifier/remove
#
#
#
# @within system:stats_modifier/remove_modifier

# IDが一致すれば削除
$execute store result score $stats_modifier.success main run data remove storage cpvp:stats_modifier players."$(UUID)"[{id:"$(id)"}]
