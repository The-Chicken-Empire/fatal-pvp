scoreboard players add @s counting 1
execute if score @s counting matches 1 at @s run playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 0.5 0
execute if score @s counting matches 2 at @s run playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 1 0
execute if score @s counting matches 3 at @s run playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 1.5 0

execute if score @s counting matches 1 run data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic19core2"]}},id:"minecraft:barrier"}
execute if score @s counting matches 2 run data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic19core3"]}},id:"minecraft:barrier"}
execute if score @s counting matches 3 run data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic19core4"]}},id:"minecraft:barrier"}