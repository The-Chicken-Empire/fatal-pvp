#function buff:check/ {id:aa}をでidを持ってるからがbuff checkに
execute if entity @s[type=player] run function buff:system/please_p with entity @s
execute if entity @s[type=!player] run function buff:system/please_e with entity @s
data remove storage buff: check
$execute if data storage buff: temp[{id:$(id)}] run data modify storage buff: check set from storage buff temp[{id:$(id)}]
$execute if data storage buff: temp[{id:$(id)}] run data modify storage buff: check.success set value 1b