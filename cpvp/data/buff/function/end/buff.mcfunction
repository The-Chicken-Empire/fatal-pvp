execute if entity @s[type=player] run function buff:system/please_p with entity @s
execute if entity @s[type=!player] run function buff:system/please_e with entity @s

data remove storage buff: check
data modify storage buff: check set from storage buff: temp[{isbuff:1b,unremovable:0b}]

execute if data storage buff: check run function buff:end/buff2 with storage buff: check