#> system:stats_modifier/add_modifier/generate_id
#
#
#
# @within system:stats_modifier/add_modifier

# tick内の区別をつけるためのカウンターを1増加
scoreboard players add $stats_modifier.id_counter main 1

# <timestamp>_<tick内カウンタ>という文字列でID生成する
execute store result storage cpvp:stats_modifier tmp.timestamp int 1 run scoreboard players get $stats_modifier.counter main
execute store result storage cpvp:stats_modifier tmp.id_counter int 1 run scoreboard players get $stats_modifier.id_counter main
function system:stats_modifier/add_modifier/helper with storage cpvp:stats_modifier tmp
