tag @s add magic50tmp
scoreboard players operation @s mp -= @s mpcost

execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/50/summonmarker
execute at @s anchored eyes positioned ^ ^ ^ summon item_display run function items:skills/magic/50/summonitemdisplay
tag @e remove magic50rotatetmp
execute at @s run playsound item.trident.throw player @a ~ ~ ~ 1 0.5 0
execute at @s run playsound item.trident.throw player @a ~ ~ ~ 1 0.5 0
execute at @s run playsound block.note_block.chime player @a ~ ~ ~ 1 0.5 0
execute at @s run playsound block.note_block.chime player @a ~ ~ ~ 1 0.5 0
execute at @s run playsound block.note_block.chime player @a ~ ~ ~ 1 0.8 0
execute at @s run playsound block.note_block.chime player @a ~ ~ ~ 1 0.8 0
execute at @s run playsound block.note_block.chime player @a ~ ~ ~ 1 1.2 0
execute at @s run playsound block.note_block.chime player @a ~ ~ ~ 1 1.2 0

tag @s remove magic50tmp

scoreboard players set $ct main 500
function api:ct/mainhand