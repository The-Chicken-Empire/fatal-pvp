execute if entity @s[type=player] run function buff:system/please_p with entity @s
execute if entity @s[type=!player] run function buff:system/please_e with entity @s

data remove storage buff: check
$data modify storage buff: check set from storage buff: temp[{id:$(id)}]

execute if data storage buff: check run function buff:end/ with storage buff: check