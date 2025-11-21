##helm3の効果 損傷1につきレベル1
execute if items entity @a[tag=buffer,limit=1] armor.head *[custom_data~{cpvp:{id:3b,item_type:"helmet"}}] run function items:skills/helmet/3/debuff

data modify storage effect: q append value {gain:1b}
$data modify storage effect: q[-1].level set value $(level)
$data modify storage effect: q[-1].duration set value $(duration)
$data modify storage effect: q[-1].id set value $(id)
execute if entity @s[type=player] store result storage effect: q[-1].owner int 1 run scoreboard players get @s playerdata
execute if entity @s[type=!player] store result storage effect: q[-1].owner int 1 run scoreboard players get @s ID
execute if entity @s[type=player] run data modify storage effect: q[-1].player set value 1b
execute if entity @s[type=!player] run data modify storage effect: q[-1].entity set value 1b
execute store result storage effect: q[-1].buffer int 1 run scoreboard players get @a[tag=buffer,limit=1] playerdata
tag @a[tag=buffer] remove buffer

execute if data storage effect: {oh:0b} run function effects:q/

execute if entity @a[tag=helm3tmp,limit=1] as @a[tag=helm3tmp] run function items:skills/helmet/3/remove