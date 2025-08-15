function effects:system/operation/please with entity @s

$execute if data storage effect: tmp[{id:$(id)}] run function effects:system/gain/remove with storage effect: q[0]

$data modify storage effect: tmp append value {id:$(id)}
data modify storage effect: tmp[-1].level set from storage effect: q[0].level
data modify storage effect: tmp[-1].duration set from storage effect: q[0].duration
data modify storage effect: tmp[-1].buffer set from storage effect: q[0].buffer



$function effects:effects/$(id)/
data modify storage effect: tmp[-1].buff set from storage effect: data.isbuff
execute if data storage effect: {data:{invisible:1b}} run data modify storage effect: tmp[-1].invisible set value 1b

execute store result score #effect-counter4113 counter2 run data get storage effect: q[0].level 1
execute if data storage effect: data.content[0] run data modify storage effect: data.unti set from storage effect: data.content[0][0]

execute if data storage effect: data.content[0] run function effects:system/gain/stats with storage effect: data

function stats:statscalc


function effects:system/operation/return with entity @s

data remove storage effect: q[0]
function effects:q/s