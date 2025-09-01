#> system:stats_modifier/add_modifier/set_effect
#
#
# @within system:stats_modifier

$execute unless data storage cpvp:stats_modifier players."$(UUID)" run data modify storage cpvp:stats_modifier players."$(UUID)" set value []
$data modify storage cpvp:stats_modifier players."$(UUID)" append from storage cpvp:stats_modifier tmp.data