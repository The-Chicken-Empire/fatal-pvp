tag @s add magic41cord
tag @s add skillmarker

scoreboard players operation @s owner = @a[tag=magic41stmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic41stmp,limit=1] teamscore
scoreboard players operation @s target = @e[tag=magic41stmp2,limit=1] entitydata
execute if entity @a[tag=magic41stmp,team=red] run team join entityred
execute if entity @a[tag=magic41stmp,team=blue] run team join entityblue
execute if entity @a[tag=magic41stmp,team=green] run team join entitygreen
execute if entity @a[tag=magic41stmp,team=yellow] run team join entityyellow
execute if entity @a[tag=magic41stmp,team=solo] run team join entitysolo

#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic41cord"]}},id:"minecraft:barrier"}
data modify entity @s teleport_duration set value 1
data modify entity @s brightness set value {block:15,sky:15}
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}

tag @s add magic41cordtmp
execute as @e[tag=magic41] if score @s owner = @e[tag=magic41cordtmp,limit=1] owner run tag @e[tag=magic41cordtmp,limit=1] add m41calling
tag @s remove magic41cordtmp