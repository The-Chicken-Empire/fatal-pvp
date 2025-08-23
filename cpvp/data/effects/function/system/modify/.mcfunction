data modify storage effect: q append value {modify:1b}

$data modify storage effect: q[-1].level set value $(level)
$data modify storage effect: q[-1].duration set value $(duration)
$data modify storage effect: q[-1].id set value $(id)
execute if entity @s[type=player] store result storage effect: q[-1].owner int 1 run scoreboard players get @s playerdata
execute if entity @s[type=!player] store result storage effect: q[-1].owner int 1 run scoreboard players get @s ID
execute if entity @s[type=player] run data modify storage effect: q[-1].player set value 1b
execute if entity @s[type=!player] run data modify storage effect: q[-1].entity set value 1b
execute store result storage effect: q[-1].buffer int 1 run scoreboard players get @a[tag=buffer,limit=1] playerdata

execute if data storage effect: {oh:0b} run function effects:q/