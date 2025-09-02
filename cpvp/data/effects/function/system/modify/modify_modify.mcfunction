
$execute store result score #effect-counter4113 counter run data get storage effect: tmp[{id:$(id)}].duration
execute store result score #effect-counter4113 counter2 run data get storage effect: q[0].duration
scoreboard players operation #effect-counter4113 counter *= $-1 main
execute unless score #effect-counter4113 counter matches 1 if score #effect-counter4113 counter2 <= #effect-counter4113 counter run return run function effects:system/modify/modify_remove with storage effect: q[0]




execute store result score #effect-counter4113 counter5 run data get storage effect: data.maxlevel

$execute store result score #effect-counter4113 counter run data get storage effect: tmp[{id:$(id)}].level

execute store result score #effect-counter4113 counter2 run data get storage effect: q[0].level 1
scoreboard players operation #effect-counter4113 counter5 -= #effect-counter4113 counter
execute if score #effect-counter4113 counter5 < #effect-counter4113 counter2 run scoreboard players operation #effect-counter4113 counter2 = #effect-counter4113 counter5


$execute store result score #effect-counter4113 counter run data get storage effect: tmp[{id:$(id)}].level
scoreboard players operation #effect-counter4113 counter *= $-1 main
execute if score #effect-counter4113 counter2 <= #effect-counter4113 counter run return run function effects:system/modify/modify_remove with storage effect: q[0]


execute if data storage effect: data.content[0] run data modify storage effect: data.unti set from storage effect: data.content[0][0]
execute if data storage effect: data.content[0] run function effects:system/modify/stats with storage effect: data


$execute store result score #effect-counter4113 counter run data get storage effect: tmp[{id:$(id)}].level
$execute store result score #effect-counter4113 counter3 run data get storage effect: tmp[{id:$(id)}].duration

execute store result score #effect-counter4113 counter4 run data get storage effect: q[0].duration
scoreboard players operation #effect-counter4113 counter += #effect-counter4113 counter2
scoreboard players operation #effect-counter4113 counter3 += #effect-counter4113 counter4
$execute if data storage effect: {tmp:{id:$(id),duration:-1}} run scoreboard players set #effect-counter4113 counter3 0
$execute store result storage effect: tmp[{id:$(id)}].level int 1 run scoreboard players get #effect-counter4113 counter
$execute store result storage effect: tmp[{id:$(id)}].duration int 1 run scoreboard players get #effect-counter4113 counter3



function effects:system/operation/return with entity @s
function stats:statscalc
data remove storage effect: q[0]
function effects:q/s