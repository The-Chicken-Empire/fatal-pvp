execute if items entity @s weapon.mainhand *[custom_data~{cpvp:{magiced:1b}}] run return fail

scoreboard players add @s weapon3 1
execute if score @s weapon3 matches 10 at @s run playsound block.note_block.chime player @s ~ ~ ~ 1 1.2 1
execute if score @s weapon3 matches 20 at @s run playsound block.note_block.chime player @s ~ ~ ~ 1 1.4 1
execute if score @s weapon3 matches 30 at @s run playsound block.note_block.chime player @s ~ ~ ~ 1 1.6 1
execute if score @s weapon3 matches 40 at @s run playsound block.note_block.chime player @s ~ ~ ~ 1 1.8 1
execute if score @s weapon3 matches 50 at @s run playsound block.note_block.chime player @s ~ ~ ~ 1 2 1
execute if score @s weapon3 matches 60.. run function items:skills/weapon/3/check