data modify storage effect: oh set value 1b
function effects:system/operation/please with entity @s
data remove storage effect: tmp3
execute if data storage effect: tmp[0] run data modify storage effect: tmp2 set from storage effect: tmp[0]
execute if data storage effect: tmp[0] run data remove storage effect: tmp[0]
execute if data storage effect: tmp2 run function effects:system/tick/_ with storage effect: tmp2



function effects:system/operation/return2 with entity @s






function effects:q/s