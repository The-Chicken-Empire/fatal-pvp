particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.5 2
execute store result score $tmp tmp run random value -180..180
execute store result entity @s Rotation[0] float 1 run scoreboard players get $tmp tmp
execute store result score $tmp tmp run random value -90..0
execute store result entity @s Rotation[1] float 1 run scoreboard players get $tmp tmp

tag @s add magic14tmp
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^0.8 summon marker run function items:skills/magic/14/markersummoned2
summon item ~ ~ ~ {PickupDelay:32767,Tags:["magic14item","skillmarker"],Invulnerable:1b,Item:{id:"minecraft:carrot",count:1}}
execute if entity @e[tag=magic14item,tag=!tagged] as @e[tag=magic14item,tag=!tagged] run function items:skills/magic/14/itemsummoned

execute store result score $tmp tmp run random value -180..180
execute store result entity @s Rotation[0] float 1 run scoreboard players get $tmp tmp
execute store result score $tmp tmp run random value -90..0
execute store result entity @s Rotation[1] float 1 run scoreboard players get $tmp tmp

scoreboard players reset $tmp tmp

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^0.8 summon marker run function items:skills/magic/14/markersummoned2
summon item ~ ~ ~ {PickupDelay:32767,Tags:["magic14item","skillmarker"],Invulnerable:1b,Item:{id:"minecraft:carrot",count:1}}
execute if entity @e[tag=magic14item,tag=!tagged] as @e[tag=magic14item,tag=!tagged] run function items:skills/magic/14/itemsummoned

tag @s remove magic14tmp

execute if score @s skills matches 44.. run kill @s