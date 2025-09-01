#> system:stats_modifier/add_modifier/helper
#
#
# @within system:stats_modifier/generate_id


$data modify storage cpvp:stats_modifier tmp.data.id set value "$(timestamp)_$(id_counter)"