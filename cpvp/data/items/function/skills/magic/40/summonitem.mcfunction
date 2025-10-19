tag @s add magic40
tag @s add skillmarker
scoreboard players operation @s owner = @e[tag=magic40tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @e[tag=magic40tmp,limit=1] teamscore

data modify entity @s PickupDelay set value 10000000
data modify entity @s Motion.[0] set from storage cpvp:magic40 x
data modify entity @s Motion.[1] set from storage cpvp:magic40 y
data modify entity @s Motion.[2] set from storage cpvp:magic40 z
data modify entity @s Glowing set value 1b
data modify entity @s Item set value {id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":{strings:["magic40id"]}}}



tag @s remove magic40tmp2