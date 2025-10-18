data modify entity @s glow_color_override set value -1
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic41cord2"]},"enchantment_glint_override":true},id:"minecraft:barrier"}
tag @s add magic41cordactive
execute at @s run playsound block.trial_spawner.close_shutter block @a ~ ~ ~ 1 1.4 0