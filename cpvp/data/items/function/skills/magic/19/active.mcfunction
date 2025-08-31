scoreboard players operation @s mp -= @s mpcost
tag @s add magic19tmp

execute at @s run playsound block.anvil.place block @a ~ ~ ~ 1 0.8 0
execute at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0

execute at @s summon item_display run function items:skills/magic/19/summonitemdisplay

function effects:system/gain/ {id:29,level:1,duration:60}


tag @s remove magic19tmp
function system:cooltime/general/set_ct_mainhand {cooltime:400}