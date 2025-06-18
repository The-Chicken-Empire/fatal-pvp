


data modify storage buff: actionbar append from storage buff: check.actionbar
data modify storage buff: actionbar append from storage buff: check.actionbar2


execute store result score #counter counter2 run data get storage buff: check.duration
scoreboard players operation #counter counter2 /= $20 main
execute if score #counter counter2 matches 100.. run data modify storage buff: actionbar append value [{"text":"\uB018","font":"space"},{"text":"+99","font":"buff/duration"}]
execute if score #counter counter2 matches -1 run data modify storage buff: actionbar append value '{"text":"\uB011","font":"space"},{"text":"∞","font":"buff/duration"},{"text":"\uC005","font":"space"}'

execute store result storage buff: tempoppo int 1 run scoreboard players get #counter counter2
execute if score #counter counter2 matches 10..99 run function system:actionbar/buff/10_99 with storage buff:
execute if score #counter counter2 matches 0..9 run function system:actionbar/buff/0_9 with storage buff:
data remove storage buff: tempoppo

scoreboard players add #counter counter 1






