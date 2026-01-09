tag @s add magic1tmp2

execute as @e[tag=pointed,tag=magic1point] at @s summon item_display run function items:skills/magic/1/summonitemdisplay


scoreboard players set $ct main 200
function api:ct/mainhand

kill @e[tag=pointed,tag=magic1point]

tag @s remove magic1tmp2