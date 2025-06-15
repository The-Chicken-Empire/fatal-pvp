execute if entity @s[type=player] run function buff:system/please_p with entity @s
execute if entity @s[type=!player] run function buff:system/please_e with entity @s

execute if data storage buff: temp[0] run function buff:modify/buff2


execute if data storage buff: temp2 run data modify storage buff: temp set from storage buff: temp2
data remove storage buff: temp2



execute if entity @s[type=player] run function buff:gain/player with entity @s
execute if entity @s[type=!player] run function buff:gain/entity with entity @s

execute if data storage buff: temp[{duration:0}] run function buff:tick/execute3 with storage buff: temp[{duration:0}]
