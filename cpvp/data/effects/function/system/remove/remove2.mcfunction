$function effects:effects/$(id)/
$function effects:effects/$(id)/remove

$execute store result score #effect-counter4113 counter2 run data get storage effect: tmp[{id:$(id)}].level 1
execute if data storage effect: data.content[0] run data modify storage effect: data.unti set from storage effect: data.content[0][0]
execute if data storage effect: data.content[0] run function effects:system/remove/stats with storage effect: data

$data remove storage effect: tmp[{id:$(id)}]
execute if entity @s[type=player] run function stats:statscalc