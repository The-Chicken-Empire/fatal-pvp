tag @s add magic1tmp
execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/1/summonmarker

execute unless entity @e[tag=pointed,tag=magic1point] run return run function items:skills/magic/1/fail

execute as @e[tag=pointed,tag=magic1point] at @s summon item_display run function items:skills/magic/1/summonitemdisplay

scoreboard players operation @s mp -= @s mpcost
scoreboard players set $ct main 200
function api:ct/mainhand

kill @e[tag=pointed,tag=magic1point]

tag @s remove magic1tmp