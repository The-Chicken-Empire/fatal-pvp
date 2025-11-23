data modify storage cpvp:stats_modifier input.add_modifier set value {id:"boots6", stats: "cc", type: "add", duration:1500, value:1}
function system:stats_modifier/add_modifier
scoreboard players add @s boots6 1