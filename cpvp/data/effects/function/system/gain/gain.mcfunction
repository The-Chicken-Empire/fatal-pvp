function effects:system/operation/please with entity @s

$execute if data storage effect: tmp[{id:$(id)}] run function effects:system/gain/remove with storage effect: q[0]



$function effects:effects/$(id)/
$data modify storage effect: tmp append value {id:$(id)}



execute store result score #effect-counter47481 counter run data get storage effect: q[0].level
execute store result score #effect-counter47481 counter2 run data get storage effect: q[0].duration
execute store result score #effect-counter47481 counter3 run data get storage effect: q[0].buffer
scoreboard players set #effect-counter47481 counter4 0
scoreboard players set #effect-counter47481 counter5 0

execute as @a if score @s playerdata = #effect-counter47481 counter3 run function effects:system/gain/effect_modifier/active with storage effect: data
execute if entity @s[type=player] run function effects:system/gain/effect_modifier/passive with storage effect: data

execute unless score #effect-counter47481 counter2 matches -1 store result score #effect-counter47481 counter2 run data get storage effect: q[0].duration
execute unless score #effect-counter47481 counter2 matches -1 run scoreboard players operation #effect-counter47481 counter5 += #effect-counter47481 counter2
execute unless score #effect-counter47481 counter5 matches 1.. run scoreboard players set #effect-counter47481 counter5 1
execute unless score #effect-counter47481 counter2 matches -1 run scoreboard players operation #effect-counter47481 counter2 = #effect-counter47481 counter5

scoreboard players operation #effect-counter47481 counter += #effect-counter47481 counter4
execute unless score #effect-counter47481 counter matches 1.. run scoreboard players set #effect-counter47481 counter 1
execute store result score #effect-counter47481 counter5 run data get storage effect: data.maxlevel
execute if score #effect-counter47481 counter > #effect-counter47481 counter5 run scoreboard players operation #effect-counter47481 counter = #effect-counter47481 counter5

execute store result storage effect: tmp[-1].level int 1 run scoreboard players get #effect-counter47481 counter
execute store result storage effect: tmp[-1].duration int 1 run scoreboard players get #effect-counter47481 counter2


data modify storage effect: tmp[-1].buffer set from storage effect: q[0].buffer

scoreboard players reset #effect-counter47481


data modify storage effect: tmp[-1].buff set from storage effect: data.isbuff
execute if data storage effect: {data:{invisible:1b}} run data modify storage effect: tmp[-1].invisible set value 1b

execute store result score #effect-counter4113 counter2 run data get storage effect: q[0].level 1
execute if data storage effect: data.content[0] run data modify storage effect: data.unti set from storage effect: data.content[0][0]

execute if data storage effect: data.content[0] run function effects:system/gain/stats with storage effect: data




function effects:system/operation/return with entity @s

data remove storage effect: q[0]
function stats:statscalc
function effects:q/s