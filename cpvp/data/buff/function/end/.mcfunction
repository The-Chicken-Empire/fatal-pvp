execute if data storage buff: check.buffcontent[0] run data modify storage buff: content set from storage buff: check.buffcontent
execute if data storage buff: check.buffcontent[0] run data modify storage buff: aeae.aeae set from storage buff: content[0][0]
execute if data storage buff: check.buffcontent[0] run function buff:end/reducebonus with storage buff: aeae
function stats:statscalc
function buff:end/function with storage buff: check

data modify storage buff: customdata set from storage buff: check
$data remove storage buff: temp[{id:$(id)}]

execute if entity @s[type=player] run function buff:gain/player with entity @s
execute if entity @s[type=!player] run function buff:gain/entity with entity @s

