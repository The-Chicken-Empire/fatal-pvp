tag @s add m61point
tag @s add skillmarker

execute as @a[tag=playing] if score @s playerdata = @e[tag=m61markertmp,limit=1] owner run tag @s add magic61tmp2

#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic61id1"]}},id:"minecraft:barrier"}
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[3f,0.1f,3f],left_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f]}
data modify entity @s brightness set value {sky:15,block:15}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 5
execute at @s run playsound item.armor.equip_netherite player @a ~ ~ ~ 1 1.4 0

#pos
execute store result storage cpvp:magic61 1 int 0.1 run random value -50..50
execute store result storage cpvp:magic61 2 int 0.1 run random value 30..200
execute at @s run function items:skills/magic/61/setpos1 with storage cpvp:magic61
tag @a[tag=magic61tmp2] remove magic61tmp2

execute at @s unless block ~ ~ ~ #main:air run function items:skills/magic/61/setpos2
execute at @s if block ~ ~-0.1 ~ #main:air run function items:skills/magic/61/setpos3
scoreboard players reset $tmp tmp

scoreboard players operation @s owner = @e[tag=m61markertmp,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=m61markertmp,limit=1] teamscore