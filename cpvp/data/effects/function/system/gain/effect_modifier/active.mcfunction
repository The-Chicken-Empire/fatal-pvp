data remove storage effect: effect_modifier.tmp
function effects:effects_modifier/please with entity @s


data modify storage effect: effect_modifier.tmp set from storage effect: effect_modifier.tmp.active

execute store result score #effect-counter942181 counter run data get storage effect: data.id


execute if data storage effect: effect_modifier.tmp[0] run data modify storage effect: effect_modifier.tmp2 set from storage effect: effect_modifier.tmp[0]
execute if data storage effect: effect_modifier.tmp[0] run function effects:system/gain/effect_modifier/recurse with storage effect: data
