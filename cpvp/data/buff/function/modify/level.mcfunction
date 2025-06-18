$execute store result score #buff-counter41412 counter run data get storage buff: temp[{id:$(id)}].level
execute store result score #buff-counter41412 counter2 run data get storage buff: modify.level
$execute store result score #buff-counter41412 counter5 run data get storage buff: temp[{id:$(id)}].maxlevel
scoreboard players operation #buff-counter41412 counter5 -= #buff-counter41412 counter
execute if score #buff-counter41412 counter5 < #buff-counter41412 counter2 run scoreboard players operation #buff-counter41412 counter2 = #buff-counter41412 counter5
scoreboard players operation #buff-counter41412 counter += #buff-counter41412 counter2
execute if score #buff-counter41412 counter matches ..0 run scoreboard players set #buff-counter41412 counter 1

$execute store result storage buff: temp[{id:$(id)}].level int 1 run scoreboard players get #buff-counter41412 counter


$data modify storage buff: temp[{id:$(id)}].actionbar2 set value [{"text":"\uB018","font":"space"}]
$execute if score #buff-counter41412 counter matches 100.. run data modify storage buff: temp[{id:$(id)}].actionbar2 append value {"text":"+99","font":"buff/level"}
$execute if score #buff-counter41412 counter matches 10..99 run data modify storage buff: temp[{id:$(id)}].actionbar2 append value {"text":"\uC006","font":"space"}
$execute if score #buff-counter41412 counter matches 1..9 run data modify storage buff: temp[{id:$(id)}].actionbar2 append value {"text":"\uC0012","font":"space"}
$execute if score #buff-counter41412 counter matches 10..99 run function buff:gain/init/5 with storage buff: temp[{id:$(id)}]



execute unless score #buff-counter41412 counter2 matches 0 if data storage buff: check.buffcontent[0] run data modify storage buff: content set from storage buff: check.buffcontent
execute unless score #buff-counter41412 counter2 matches 0 if data storage buff: check.buffcontent[0] run data modify storage buff: aeae.aeae set from storage buff: content[0][0]
execute unless score #buff-counter41412 counter2 matches 0 if data storage buff: check.buffcontent[0] run function buff:modify/changebonus with storage buff: aeae
execute unless score #buff-counter41412 counter2 matches 0 run function stats:statscalc
