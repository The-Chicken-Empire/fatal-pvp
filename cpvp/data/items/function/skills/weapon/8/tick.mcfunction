scoreboard players add @s weapon8 1
execute if score @s weapon3 matches 1.. unless items entity @s weapon.mainhand *[custom_data~{cpvp:{id:8,item_type:weapon}}] run return run scoreboard players set @s weapon8 0
execute if score @s weapon3 matches 1.. if items entity @s weapon.mainhand *[custom_data~{cpvp:{id:8,item_type:weapon}}] run scoreboard players add @s weapon8 1
execute if score @s weapon8 matches 160.. at @s run particle soul_fire_flame ~ ~ ~ 0.2 0 0.2 0.1 1
execute if score @s weapon8 matches 160 at @s run playsound item.armor.equip_chain player @s ~ ~ ~ 1 0 1