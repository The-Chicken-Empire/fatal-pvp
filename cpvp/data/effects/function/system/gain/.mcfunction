data modify storage effect: q append value {gain:1b}
$data modify storage effect: q[0].level set value $(level)
$data modify storage effect: q[0].duration set value $(duration)
$data modify storage effect: q[0].id set value $(id)
execute if entity @s[type=player] store result storage effect: q[0].owner int 1 run scoreboard players get @s playerdata
execute if entity @s[type=!player] store result storage effect: q[0].owner int 1 run scoreboard players get @s ID
execute if entity @s[type=player] run data modify storage effect: q[0].player set value 1b
execute if entity @s[type=!player] run data modify storage effect: q[0].entity set value 1b
execute store result storage effect: q[0].buffer int 1 run scoreboard players get @a[tag=buffer,limit=1] playerdata

execute if data storage effect: {oh:0b} run function effects:q/