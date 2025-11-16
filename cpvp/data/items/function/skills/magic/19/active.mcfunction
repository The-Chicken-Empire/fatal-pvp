scoreboard players operation @s eng -= @s engcost
tag @s add magic19tmp

execute at @s anchored eyes positioned ^ ^ ^ summon item_display run function items:skills/magic/19/summonitemdisplay

#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0.8 0
#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0.4 0
#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0 0
#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0.8 0
#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0.4 0
#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0 0
#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0.8 0
#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0.4 0
#execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 0 0

tag @s remove magic19tmp
scoreboard players set $ct main 500
function api:ct/mainhand