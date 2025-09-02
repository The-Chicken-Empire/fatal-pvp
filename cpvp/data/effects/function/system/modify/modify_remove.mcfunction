say r
$function effects:effects/$(id)/remove

$execute store result score #effect-counter4113 counter2 run data get storage effect: tmp[{id:$(id)}].level 1
execute if data storage effect: data.content[0] run data modify storage effect: data.unti set from storage effect: data.content[0][0]
execute if data storage effect: data.content[0] run function effects:system/remove/stats with storage effect: data

$data remove storage effect: tmp[{id:$(id)}]

function effects:system/operation/return with entity @s
function stats:statscalc
data remove storage effect: q[0]
function effects:q/s