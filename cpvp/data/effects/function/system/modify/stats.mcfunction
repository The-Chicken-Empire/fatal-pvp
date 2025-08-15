

execute store result score #effect-counter4113 counter run data get storage effect: data.content[0][1] 1
scoreboard players operation #effect-counter4113 counter *= #effect-counter4113 counter2

$scoreboard players operation @s $(unti)_buff += #effect-counter4113 counter




data remove storage effect: data.content[0]
execute if data storage effect: data.content[0] run data modify storage effect: data.unti set from storage effect: data.content[0][0]
execute if data storage effect: data.content[0] run function effects:system/remove/stats with storage effect: data