data remove storage effect: effect_modifier.tmp
function effects:effects_modifier/please with entity @s



$execute if data storage effect: effect_modifier.tmp.active[{id:$(id)}] run data remove storage effect: effect_modifier.tmp.active[{id:$(id)}]
$execute if data storage effect: effect_modifier.tmp.passive[{id:$(id)}] run data remove storage effect: effect_modifier.tmp.passive[{id:$(id)}]

function effects:effects_modifier/return with entity @s