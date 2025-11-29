


data modify storage cpvp:stats_modifier input.add_modifier set value {id:"m55dmg", stats: "damage", type: "add", duration:300, value:3}
function system:stats_modifier/add_modifier
data modify storage cpvp:stats_modifier input.add_modifier set value {id:"m55as", stats: "bonusattackspeed", type: "add", duration:300, value:7}
function system:stats_modifier/add_modifier

execute at @s run playsound entity.evoker_fangs.attack hostile @a ~ ~ ~ 1 2 0
execute at @s run playsound entity.player.hurt hostile @a ~ ~ ~ 1 1.7 0
execute at @s run playsound entity.allay.death hostile @a ~ ~ ~ 1 1.3 0
execute at @s run particle damage_indicator ~ ~1.2 ~ 0.2 0 0.2 0.3 7 normal