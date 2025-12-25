tag @s add magic62clock
tag @s add skillmarker
tag @s add m62clocktmp
tag @s add construction
function items:skills/markerid

data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic62clock"]},enchantment_glint_override:true},id:"minecraft:barrier"}
data modify entity @s interpolation_duration set value 0
data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,1.5f]}
data modify entity @s billboard set value "vertical"
data modify entity @s brightness set value {block:15,sky:15}

scoreboard players operation @s owner = @a[tag=magic62call,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic62call,limit=1] teamscore

execute if entity @a[tag=magic62call,team=red] run team join entityred
execute if entity @a[tag=magic62call,team=blue] run team join entityblue
execute if entity @a[tag=magic62call,team=green] run team join entitygreen
execute if entity @a[tag=magic62call,team=yellow] run team join entityyellow
execute if entity @a[tag=magic62call,team=solo] run team join entitysolo

data modify entity @s glow_color_override set value -1
data modify entity @s Glowing set value 1b

scoreboard players set @s counting 60

execute at @s summon item_display run function items:skills/magic/62/summonsting1
execute at @s summon item_display run function items:skills/magic/62/summonsting2
