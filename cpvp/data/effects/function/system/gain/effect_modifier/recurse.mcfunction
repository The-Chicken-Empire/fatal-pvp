execute store result score #effect-counter942181 counter2 run data get storage effect: effect_modifier.tmp2.target
execute if score #effect-counter942181 counter = #effect-counter942181 counter2 run function effects:system/gain/effect_modifier/bonus with storage effect: effect_modifier.tmp2
execute if data storage effect: {data:{isbuff:1b}} if data storage effect: {effect_modifier:{tmp2:{target:buff}}} run function effects:system/gain/effect_modifier/bonus with storage effect: effect_modifier.tmp2
execute if data storage effect: {data:{isbuff:0b}} if data storage effect: {effect_modifier:{tmp2:{target:debuff}}} run function effects:system/gain/effect_modifier/bonus with storage effect: effect_modifier.tmp2


scoreboard players reset #effect-counter942181 counter2






data remove storage effect: effect_modifier.tmp[0]
execute if data storage effect: effect_modifier.tmp[0] run data modify storage effect: effect_modifier.tmp2 set from storage effect: effect_modifier.tmp[0]
execute if data storage effect: effect_modifier.tmp[0] run function effects:system/gain/effect_modifier/recurse with storage effect: data