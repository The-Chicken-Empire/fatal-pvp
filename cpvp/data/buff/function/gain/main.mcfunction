#初期処理
scoreboard players reset #buff-counter2
execute store result score #buff-counter counter run data get storage buff: gain.id
#execute if score #buff-counter counter matches ..20 run say a
execute unless score #buff-counter counter matches 20.. run function buff:gain/init
scoreboard players reset #buff-counter

#時間とレベルの処理


execute if entity @e[tag=buffer,limit=1] run data modify storage buff: gain.buffer set from entity @e[tag=buffer,limit=1] UUID




#処理
data modify storage buff: temp append from storage buff: gain

execute if entity @s[type=player] run function buff:gain/player with entity @s
execute if entity @s[type=!player] run function buff:gain/entity with entity @s

execute if data storage buff: gain.buffcontent[0] run data modify storage buff: content set from storage buff: gain.buffcontent
execute if data storage buff: gain.buffcontent[0] run data modify storage buff: aeae.aeae set from storage buff: content[0][0]
execute if data storage buff: gain.buffcontent[0] run function buff:gain/addbonus with storage buff: aeae


tag @e[tag=buffer] remove buffer
scoreboard players reset #buffcounter

data remove storage buff: gain