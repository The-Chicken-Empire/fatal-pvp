data modify storage cpvp:stats_modifier input.add_modifier set value {id:"boots11", stats: "speed", type: "add", duration:200, value:4}
function system:stats_modifier/add_modifier
execute at @s run playsound entity.firework_rocket.shoot player @s ~ ~ ~ 0.8 2 0.8