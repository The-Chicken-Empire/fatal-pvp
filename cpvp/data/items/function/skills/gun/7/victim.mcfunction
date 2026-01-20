#これが弓を受けた時のデータ
data modify storage cpvp:gun id set value 7

execute unless entity @s[type=player] run return fail
execute at @s run playsound entity.evoker_fangs.attack hostile @s ~ ~ ~ 1 1.4 1
tag @s add range7victimtmp
data modify storage cpvp:stats_modifier input.add_modifier set value {stats: "defence", type: "add", duration:200, value:-10}
function system:stats_modifier/add_modifier